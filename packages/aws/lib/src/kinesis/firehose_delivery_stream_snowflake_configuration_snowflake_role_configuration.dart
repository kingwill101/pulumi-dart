// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration {
  /// Whether the Snowflake role is enabled.
  final bool? enabled;

  /// The Snowflake role.
  final String? snowflakeRole;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration].
  /// [enabled] Whether the Snowflake role is enabled.
  /// [snowflakeRole] The Snowflake role.
  FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration({
    this.enabled,
    this.snowflakeRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final snowflakeRoleValue = snowflakeRole;
    if (snowflakeRoleValue != null) {
      map['snowflakeRole'] = snowflakeRoleValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      snowflakeRole:
          map['snowflakeRole'] == null ? null : map['snowflakeRole'] as String,
    );
  }
}
