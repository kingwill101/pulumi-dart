// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceRelationalDatabaseConfigHttpEndpointConfig {
  /// AWS secret store ARN for database credentials.
  final pulumi.Input<String> awsSecretStoreArn;
  /// Logical database name.
  final pulumi.Input<String>? databaseName;
  /// Amazon RDS cluster identifier.
  final pulumi.Input<String> dbClusterIdentifier;
  /// AWS Region for RDS HTTP endpoint. Defaults to current region.
  final pulumi.Input<String>? region;
  /// Logical schema name.
  final pulumi.Input<String>? schema;

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
      awsSecretStoreArn: (map['awsSecretStoreArn'] as String).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      dbClusterIdentifier: (map['dbClusterIdentifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schema: map['schema'] == null ? null : ((map['schema'] as String).input()).input(),
    );
  }
}

