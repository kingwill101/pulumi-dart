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

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift(
      bucketName: (map['bucketName'] as String).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : ((map['bucketPrefix'] as String).input()).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : ((map['clusterIdentifier'] as String).input()).input(),
      dataApiRoleArn: map['dataApiRoleArn'] == null ? null : ((map['dataApiRoleArn'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      databaseUrl: map['databaseUrl'] == null ? null : ((map['databaseUrl'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

