// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfigResponseContainerV1beta1 {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool enabled;

  ConfigConnectorConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigConnectorConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ConfigConnectorConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
