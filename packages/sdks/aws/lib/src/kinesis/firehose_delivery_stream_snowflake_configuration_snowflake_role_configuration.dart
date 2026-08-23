// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration {
  /// Whether the Snowflake role is enabled.
  final pulumi.Input<bool>? enabled;
  /// The Snowflake role.
  final pulumi.Input<String>? snowflakeRole;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration].
  /// [enabled] Whether the Snowflake role is enabled.
  /// [snowflakeRole] The Snowflake role.
  const FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration({
    this.enabled,
    this.snowflakeRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'snowflakeRole': ?snowflakeRole,
    };
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snowflakeRole: (() { final guardedValue = map['snowflakeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
