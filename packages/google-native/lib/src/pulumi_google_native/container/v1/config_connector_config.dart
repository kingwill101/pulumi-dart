// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool? enabled;

  ConfigConnectorConfig({
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

  factory ConfigConnectorConfig.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
