// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift {
  /// Name of the Amazon S3 bucket associated with Snowflake.
  final pulumi.Input<String> bucketName;
  /// Bucket path that refers to the Amazon S3 bucket associated with Snowflake.
  final pulumi.Input<String>? bucketPrefix;
  /// Unique ID that's assigned to an Amazon Redshift cluster.
  final pulumi.Input<String>? clusterIdentifier;
  /// ARN of the IAM role that permits AppFlow to access the database through Data API.
  final pulumi.Input<String>? dataApiRoleArn;
  /// Name of an Amazon Redshift database.
  final pulumi.Input<String>? databaseName;
  /// JDBC URL of the Amazon Redshift cluster.
  final pulumi.Input<String>? databaseUrl;
  /// ARN of the IAM role.
  final pulumi.Input<String> roleArn;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift].
  /// [bucketName] Name of the Amazon S3 bucket associated with Snowflake.
  /// [bucketPrefix] Bucket path that refers to the Amazon S3 bucket associated with Snowflake.
  /// [clusterIdentifier] Unique ID that's assigned to an Amazon Redshift cluster.
  /// [dataApiRoleArn] ARN of the IAM role that permits AppFlow to access the database through Data API.
  /// [databaseName] Name of an Amazon Redshift database.
  /// [databaseUrl] JDBC URL of the Amazon Redshift cluster.
  /// [roleArn] ARN of the IAM role.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift({
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataApiRoleArn: (() { final guardedValue = map['dataApiRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseUrl: (() { final guardedValue = map['databaseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
