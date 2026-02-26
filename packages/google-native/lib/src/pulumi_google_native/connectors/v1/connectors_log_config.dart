// ignore_for_file: unused_element, unnecessary_cast

/// Log configuration for the connection.
class ConnectorsLogConfig {
  /// Enabled represents whether logging is enabled or not for a connection.
  final bool? enabled;

  ConnectorsLogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ConnectorsLogConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorsLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
