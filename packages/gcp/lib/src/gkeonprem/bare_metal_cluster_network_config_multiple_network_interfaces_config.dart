// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods.
  /// When set network_config.advanced_networking is automatically
  /// set to true.
  final bool? enabled;

  /// Creates a new [BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig].
  /// [enabled] Whether to enable multiple network interfaces for your pods.
  BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig({
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

  factory BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
