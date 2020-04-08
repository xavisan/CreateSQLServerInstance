
# ---------------------------------------------------------
# Parametros / Powershell - Crear una instancia SQLServer
# ---------------------------------------------------------

$Uregion = "u-east-1"
$Lmodel ="license-model"
$SQLen = "sqlserver-ex"
$Instance = "instancename"
$StorageGB = "20"
$ClassI = "db.t2.micro"
$username = "administrator"
$password = "password!"
$amazonSQLInstance = "instancename.cktqndeoylxy.us-east-2.rds.amazonaws.com,1433"
$rootPath ="C:\Database\"

# ---------------------------------------------
# Creación de la base de datos en Amazon AWS
# ---------------------------------------------
Write-Host "Creating database instance in Amazon AWS"
aws rds create-db-instance --region $Uregion --license-model $Lmodel --engine $SQLen --db-instance-identifier $instance --allocated-storage $StorageGB --db-instance-class $ClassI --master-username $username --master-user-password $password
Write-Host "Please wait 2 minutes..."
Start-Sleep -Seconds 120


# ---------------------------------------------------
# Relacion de instancias existentes en una instancia
# ----------------------------------------------------
aws rds describe-db-instances --region us-east-2 --output table --query 'DBInstances[*].DBInstanceIdentifier'



