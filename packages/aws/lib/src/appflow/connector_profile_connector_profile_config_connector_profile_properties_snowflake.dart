// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake {
  /// The name of the account.
  final String? accountName;
  final String bucketName;
  final String? bucketPrefix;
  final String? privateLinkServiceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  final String? region;

  /// Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `<Database>.<Schema>.<Stage Name>`.
  final String stage;

  /// The name of the Snowflake warehouse.
  final String warehouse;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake].
  /// [accountName] The name of the account.
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [privateLinkServiceName] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] Name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: `<Database>.<Schema>.<Stage Name>`.
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
    final map = <String, dynamic>{};
    final accountNameValue = accountName;
    if (accountNameValue != null) {
      map['accountName'] = accountNameValue;
    }
    map['bucketName'] = bucketName;
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final privateLinkServiceNameValue = privateLinkServiceName;
    if (privateLinkServiceNameValue != null) {
      map['privateLinkServiceName'] = privateLinkServiceNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['stage'] = stage;
    map['warehouse'] = warehouse;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake(
      accountName:
          map['accountName'] == null ? null : map['accountName'] as String,
      bucketName: map['bucketName'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      privateLinkServiceName: map['privateLinkServiceName'] == null
          ? null
          : map['privateLinkServiceName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      stage: map['stage'] as String,
      warehouse: map['warehouse'] as String,
    );
  }
}
