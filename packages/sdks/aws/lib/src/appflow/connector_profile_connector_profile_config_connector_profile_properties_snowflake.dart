// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake {
  /// Name of the account.
  final pulumi.Input<String?>? accountName;
  /// Name of the Amazon S3 bucket associated with Snowflake.
  final pulumi.Input<String> bucketName;
  /// Bucket path that refers to the Amazon S3 bucket associated with Snowflake.
  final pulumi.Input<String?>? bucketPrefix;
  /// Snowflake Private Link service name to be used for private data transfers.
  final pulumi.Input<String?>? privateLinkServiceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `&lt;Database&gt;.&lt;Schema&gt;.&lt;Stage Name&gt;`.
  final pulumi.Input<String> stage;
  /// Name of the Snowflake warehouse.
  final pulumi.Input<String> warehouse;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake].
  /// [accountName] Name of the account.
  /// [bucketName] Name of the Amazon S3 bucket associated with Snowflake.
  /// [bucketPrefix] Bucket path that refers to the Amazon S3 bucket associated with Snowflake.
  /// [privateLinkServiceName] Snowflake Private Link service name to be used for private data transfers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `&lt;Database&gt;.&lt;Schema&gt;.&lt;Stage Name&gt;`.
  /// [warehouse] Name of the Snowflake warehouse.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake({
    this.accountName,
    required this.bucketName,
    this.bucketPrefix,
    this.privateLinkServiceName,
    this.region,
    required this.stage,
    required this.warehouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      'privateLinkServiceName': ?privateLinkServiceName,
      'region': ?region,
      'stage': stage,
      'warehouse': warehouse,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceName: (() { final guardedValue = map['privateLinkServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      warehouse: pulumi.Input.fromValue(map['warehouse'] as String),
    );
  }
}
