// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake {
  /// The name of the account.
  final pulumi.Input<String>? accountName;
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<String>? privateLinkServiceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `&lt;Database&gt;.&lt;Schema&gt;.&lt;Stage Name&gt;`.
  final pulumi.Input<String> stage;
  /// The name of the Snowflake warehouse.
  final pulumi.Input<String> warehouse;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake].
  /// [accountName] The name of the account.
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [privateLinkServiceName] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `&lt;Database&gt;.&lt;Schema&gt;.&lt;Stage Name&gt;`.
  /// [warehouse] The name of the Snowflake warehouse.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake({
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

