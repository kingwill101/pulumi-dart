/// Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
enum SourceType {
  onPremises("OnPremises"),
  aWS("AWS"),
  gCP("GCP"),
  azureVM("AzureVM"),
  postgreSQLSingleServer("PostgreSQLSingleServer"),
  aWSRDS("AWS_RDS"),
  aWSAURORA("AWS_AURORA"),
  aWSEC2("AWS_EC2"),
  gCPCloudSQL("GCP_CloudSQL"),
  gCPAlloyDB("GCP_AlloyDB"),
  gCPCompute("GCP_Compute"),
  eDB("EDB"),
  eDBOracleServer("EDB_Oracle_Server"),
  eDBPostgreSQL("EDB_PostgreSQL"),
  postgreSQLFlexibleServer("PostgreSQLFlexibleServer"),
  postgreSQLCosmosDB("PostgreSQLCosmosDB"),
  huaweiRDS("Huawei_RDS"),
  huaweiCompute("Huawei_Compute"),
  herokuPostgreSQL("Heroku_PostgreSQL"),
  crunchyPostgreSQL("Crunchy_PostgreSQL"),
  apsaraDBRDS("ApsaraDB_RDS"),
  digitalOceanDroplets("Digital_Ocean_Droplets"),
  digitalOceanPostgreSQL("Digital_Ocean_PostgreSQL"),
  supabasePostgreSQL("Supabase_PostgreSQL");

  const SourceType(this.wireValue);
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}
