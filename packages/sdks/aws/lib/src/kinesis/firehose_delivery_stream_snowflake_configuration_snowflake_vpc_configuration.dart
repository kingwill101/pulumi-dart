// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration {
  /// VPCE ID for Firehose to privately connect with Snowflake.
  final pulumi.Input<String> privateLinkVpceId;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration].
  /// [privateLinkVpceId] VPCE ID for Firehose to privately connect with Snowflake.
  const FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration({
    required this.privateLinkVpceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkVpceId': privateLinkVpceId,
    };
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration(
      privateLinkVpceId: pulumi.Input.fromValue(map['privateLinkVpceId'] as String),
    );
  }
}
