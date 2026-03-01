// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the multiple networking interfaces cluster configuration.
class BareMetalMultipleNetworkInterfacesConfigResponse {
  /// Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  final bool enabled;

  /// Creates a new [BareMetalMultipleNetworkInterfacesConfigResponse].
  /// [enabled] Whether to enable multiple network interfaces for your pods. When set network_config.advanced_networking is automatically set to true.
  BareMetalMultipleNetworkInterfacesConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory BareMetalMultipleNetworkInterfacesConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalMultipleNetworkInterfacesConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
