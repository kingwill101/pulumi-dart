// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration {
  /// The VPCE ID for Firehose to privately connect with Snowflake.
  final String privateLinkVpceId;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration].
  /// [privateLinkVpceId] The VPCE ID for Firehose to privately connect with Snowflake.
  FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration({
    required this.privateLinkVpceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'privateLinkVpceId': privateLinkVpceId};
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration(
      privateLinkVpceId: map['privateLinkVpceId'] as String,
    );
  }
}
