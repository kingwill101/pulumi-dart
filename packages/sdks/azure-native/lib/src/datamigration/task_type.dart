/// Task type.
enum TaskType {
  valueConnectMongoDb("Connect.MongoDb"),
  valueConnectToSourceSqlServer("ConnectToSource.SqlServer"),
  valueConnectToSourceSqlServerSync("ConnectToSource.SqlServer.Sync"),
  valueConnectToSourcePostgreSqlSync("ConnectToSource.PostgreSql.Sync"),
  valueConnectToSourceMySql("ConnectToSource.MySql"),
  valueConnectToSourceOracleSync("ConnectToSource.Oracle.Sync"),
  valueConnectToTargetSqlDb("ConnectToTarget.SqlDb"),
  valueConnectToTargetSqlDbSync("ConnectToTarget.SqlDb.Sync"),
  valueConnectToTargetAzureDbForPostgreSqlSync("ConnectToTarget.AzureDbForPostgreSql.Sync"),
  valueConnectToTargetOracleAzureDbForPostgreSqlSync("ConnectToTarget.Oracle.AzureDbForPostgreSql.Sync"),
  valueConnectToTargetAzureSqlDbMI("ConnectToTarget.AzureSqlDbMI"),
  valueConnectToTargetAzureSqlDbMISyncLRS("ConnectToTarget.AzureSqlDbMI.Sync.LRS"),
  valueConnectToTargetAzureDbForMySql("ConnectToTarget.AzureDbForMySql"),
  valueGetUserTablesSql("GetUserTables.Sql"),
  valueGetUserTablesAzureSqlDbSync("GetUserTables.AzureSqlDb.Sync"),
  valueGetUserTablesOracle("GetUserTablesOracle"),
  valueGetUserTablesPostgreSql("GetUserTablesPostgreSql"),
  valueGetUserTablesMySql("GetUserTablesMySql"),
  valueMigrateMongoDb("Migrate.MongoDb"),
  valueMigrateSqlServerAzureSqlDbMI("Migrate.SqlServer.AzureSqlDbMI"),
  valueMigrateSqlServerAzureSqlDbMISyncLRS("Migrate.SqlServer.AzureSqlDbMI.Sync.LRS"),
  valueMigrateSqlServerSqlDb("Migrate.SqlServer.SqlDb"),
  valueMigrateSqlServerAzureSqlDbSync("Migrate.SqlServer.AzureSqlDb.Sync"),
  valueMigrateMySqlAzureDbForMySqlSync("Migrate.MySql.AzureDbForMySql.Sync"),
  valueMigrateMySqlAzureDbForMySql("Migrate.MySql.AzureDbForMySql"),
  valueMigratePostgreSqlAzureDbForPostgreSqlSyncV2("Migrate.PostgreSql.AzureDbForPostgreSql.SyncV2"),
  valueMigrateOracleAzureDbForPostgreSqlSync("Migrate.Oracle.AzureDbForPostgreSql.Sync"),
  valueValidateMigrationInputSqlServerSqlDbSync("ValidateMigrationInput.SqlServer.SqlDb.Sync"),
  valueValidateMigrationInputSqlServerAzureSqlDbMI("ValidateMigrationInput.SqlServer.AzureSqlDbMI"),
  valueValidateMigrationInputSqlServerAzureSqlDbMISyncLRS("ValidateMigrationInput.SqlServer.AzureSqlDbMI.Sync.LRS"),
  valueValidateMongoDb("Validate.MongoDb"),
  valueValidateOracleAzureDbPostgreSqlSync("Validate.Oracle.AzureDbPostgreSql.Sync"),
  valueGetTDECertificatesSql("GetTDECertificates.Sql"),
  valueMigrateSsis("Migrate.Ssis"),
  valueServiceCheckOCI("Service.Check.OCI"),
  valueServiceUploadOCI("Service.Upload.OCI"),
  valueServiceInstallOCI("Service.Install.OCI"),
  valueMigrateSchemaSqlServerSqlDb("MigrateSchemaSqlServerSqlDb");

  const TaskType(this.wireValue);
  final String wireValue;

  static TaskType fromValue(String value) {
    for (final item in TaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskType value: $value');
  }
}

