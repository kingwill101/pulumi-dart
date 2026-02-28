// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig {
  /// When set network_config.advanced_networking is automatically
  /// set to true.
  final bool? enabled;

  /// Creates a new [BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig].
  /// [enabled] When set network_config.advanced_networking is automatically
  BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig({
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

  factory BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
