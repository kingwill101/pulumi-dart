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
  const DataSourceRelationalDatabaseConfigHttpEndpointConfig({
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
      awsSecretStoreArn: pulumi.Input.fromValue(map['awsSecretStoreArn'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterIdentifier: pulumi.Input.fromValue(map['dbClusterIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

