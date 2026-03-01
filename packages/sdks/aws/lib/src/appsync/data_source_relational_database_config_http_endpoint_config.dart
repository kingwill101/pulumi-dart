// ignore_for_file: unused_element, unnecessary_cast


class DataSourceRelationalDatabaseConfigHttpEndpointConfig {
  /// AWS secret store ARN for database credentials.
  final String awsSecretStoreArn;
  /// Logical database name.
  final String? databaseName;
  /// Amazon RDS cluster identifier.
  final String dbClusterIdentifier;
  /// AWS Region for RDS HTTP endpoint. Defaults to current region.
  final String? region;
  /// Logical schema name.
  final String? schema;

  /// Creates a new [DataSourceRelationalDatabaseConfigHttpEndpointConfig].
  /// [awsSecretStoreArn] AWS secret store ARN for database credentials.
  /// [databaseName] Logical database name.
  /// [dbClusterIdentifier] Amazon RDS cluster identifier.
  /// [region] AWS Region for RDS HTTP endpoint. Defaults to current region.
  /// [schema] Logical schema name.
  DataSourceRelationalDatabaseConfigHttpEndpointConfig({
    required this.awsSecretStoreArn,
    this.databaseName,
    required this.dbClusterIdentifier,
    this.region,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsSecretStoreArn': awsSecretStoreArn,
      'databaseName': ?databaseName,
      'dbClusterIdentifier': dbClusterIdentifier,
      'region': ?region,
      'schema': ?schema,
    };
  }

  factory DataSourceRelationalDatabaseConfigHttpEndpointConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceRelationalDatabaseConfigHttpEndpointConfig(
      awsSecretStoreArn: map['awsSecretStoreArn'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      dbClusterIdentifier: map['dbClusterIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}

