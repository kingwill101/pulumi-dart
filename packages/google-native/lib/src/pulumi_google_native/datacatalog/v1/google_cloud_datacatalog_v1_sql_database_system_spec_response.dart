// ignore_for_file: unused_element, unnecessary_cast

/// Specification that applies to entries that are part `SQL_DATABASE` system (user_specified_type)
class GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse {
  /// Version of the database engine.
  final String databaseVersion;

  /// Host of the SQL database enum InstanceHost { UNDEFINED = 0; SELF_HOSTED = 1; CLOUD_SQL = 2; AMAZON_RDS = 3; AZURE_SQL = 4; } Host of the enclousing database instance.
  final String instanceHost;

  /// SQL Database Engine. enum SqlEngine { UNDEFINED = 0; MY_SQL = 1; POSTGRE_SQL = 2; SQL_SERVER = 3; } Engine of the enclosing database instance.
  final String sqlEngine;

  GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse({
    required this.databaseVersion,
    required this.instanceHost,
    required this.sqlEngine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseVersion'] = databaseVersion;
    map['instanceHost'] = instanceHost;
    map['sqlEngine'] = sqlEngine;
    return map;
  }

  factory GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse(
      databaseVersion: map['databaseVersion'] as String,
      instanceHost: map['instanceHost'] as String,
      sqlEngine: map['sqlEngine'] as String,
    );
  }
}
