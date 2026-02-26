// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the multiple networking interfaces cluster configuration.
class BareMetalMultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  final bool? enabled;

  BareMetalMultipleNetworkInterfacesConfig({
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

  factory BareMetalMultipleNetworkInterfacesConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalMultipleNetworkInterfacesConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
