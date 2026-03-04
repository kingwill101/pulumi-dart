// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String>? bucketPrefix;

  /// The unique ID that's assigned to an Amazon Redshift cluster.
  final pulumi.Input<String>? clusterIdentifier;

  /// ARN of the IAM role that permits AppFlow to access the database through Data API.
  final pulumi.Input<String>? dataApiRoleArn;

  /// The name of an Amazon Redshift database.
  final pulumi.Input<String>? databaseName;

  /// The JDBC URL of the Amazon Redshift cluster.
  final pulumi.Input<String>? databaseUrl;

  /// ARN of the IAM role.
  final pulumi.Input<String> roleArn;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [clusterIdentifier] The unique ID that's assigned to an Amazon Redshift cluster.
  /// [dataApiRoleArn] ARN of the IAM role that permits AppFlow to access the database through Data API.
  /// [databaseName] The name of an Amazon Redshift database.
  /// [databaseUrl] The JDBC URL of the Amazon Redshift cluster.
  /// [roleArn] ARN of the IAM role.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift({
    required this.bucketName,
    this.bucketPrefix,
    this.clusterIdentifier,
    this.dataApiRoleArn,
    this.databaseName,
    this.databaseUrl,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      'clusterIdentifier': ?clusterIdentifier,
      'dataApiRoleArn': ?dataApiRoleArn,
      'databaseName': ?databaseName,
      'databaseUrl': ?databaseUrl,
      'roleArn': roleArn,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() {
        final guardedValue = map['bucketPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterIdentifier: (() {
        final guardedValue = map['clusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataApiRoleArn: (() {
        final guardedValue = map['dataApiRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseUrl: (() {
        final guardedValue = map['databaseUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
