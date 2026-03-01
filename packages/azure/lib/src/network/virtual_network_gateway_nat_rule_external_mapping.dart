// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayNatRuleExternalMapping {
  /// The string CIDR representing the address space for the Virtual Network Gateway Nat Rule external mapping.
  final String addressSpace;
  /// The single port range for the Virtual Network Gateway Nat Rule external mapping.
  final String? portRange;

  /// Creates a new [VirtualNetworkGatewayNatRuleExternalMapping].
  /// [addressSpace] The string CIDR representing the address space for the Virtual Network Gateway Nat Rule external mapping.
  /// [portRange] The single port range for the Virtual Network Gateway Nat Rule external mapping.
  VirtualNetworkGatewayNatRuleExternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VirtualNetworkGatewayNatRuleExternalMapping.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayNatRuleExternalMapping(
      addressSpace: map['addressSpace'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
    );
  }
}

