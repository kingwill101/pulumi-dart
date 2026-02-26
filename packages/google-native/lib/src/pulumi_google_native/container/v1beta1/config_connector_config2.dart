// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig2 {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool? enabled;

  ConfigConnectorConfig2({
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

  factory ConfigConnectorConfig2.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
