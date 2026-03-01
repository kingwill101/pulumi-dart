// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift {
  final String bucketName;
  final String? bucketPrefix;

  /// The unique ID that's assigned to an Amazon Redshift cluster.
  final String? clusterIdentifier;

  /// ARN of the IAM role that permits AppFlow to access the database through Data API.
  final String? dataApiRoleArn;

  /// The name of an Amazon Redshift database.
  final String? databaseName;

  /// The JDBC URL of the Amazon Redshift cluster.
  final String? databaseUrl;

  /// ARN of the IAM role.
  final String roleArn;

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
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
      clusterIdentifier: map['clusterIdentifier'] == null
          ? null
          : map['clusterIdentifier'] as String,
      dataApiRoleArn: map['dataApiRoleArn'] == null
          ? null
          : map['dataApiRoleArn'] as String,
      databaseName: map['databaseName'] == null
          ? null
          : map['databaseName'] as String,
      databaseUrl: map['databaseUrl'] == null
          ? null
          : map['databaseUrl'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
