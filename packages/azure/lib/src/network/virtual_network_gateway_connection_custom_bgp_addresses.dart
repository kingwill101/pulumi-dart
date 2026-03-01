// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayConnectionCustomBgpAddresses {
  /// single IP address that is part of the `azure.network.VirtualNetworkGateway` ip_configuration (first one)
  final String primary;
  /// single IP address that is part of the `azure.network.VirtualNetworkGateway` ip_configuration (second one)
  final String? secondary;

  /// Creates a new [VirtualNetworkGatewayConnectionCustomBgpAddresses].
  /// [primary] single IP address that is part of the `azure.network.VirtualNetworkGateway` ip_configuration (first one)
  /// [secondary] single IP address that is part of the `azure.network.VirtualNetworkGateway` ip_configuration (second one)
  VirtualNetworkGatewayConnectionCustomBgpAddresses({
    required this.primary,
    this.secondary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': primary,
      'secondary': ?secondary,
    };
  }

  factory VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionCustomBgpAddresses(
      primary: map['primary'] as String,
      secondary: map['secondary'] == null ? null : map['secondary'] as String,
    );
  }
}

