// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfigResponse2 {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool enabled;

  ConfigConnectorConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigConnectorConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
