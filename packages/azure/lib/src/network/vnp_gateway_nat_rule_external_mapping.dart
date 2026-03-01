// ignore_for_file: unused_element, unnecessary_cast


class VnpGatewayNatRuleExternalMapping {
  /// The string CIDR representing the address space for the VPN Gateway Nat Rule external mapping.
  final String addressSpace;
  /// The single port range for the VPN Gateway Nat Rule external mapping.
  final String? portRange;

  /// Creates a new [VnpGatewayNatRuleExternalMapping].
  /// [addressSpace] The string CIDR representing the address space for the VPN Gateway Nat Rule external mapping.
  /// [portRange] The single port range for the VPN Gateway Nat Rule external mapping.
  VnpGatewayNatRuleExternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VnpGatewayNatRuleExternalMapping.fromMap(Map<String, dynamic> map) {
    return VnpGatewayNatRuleExternalMapping(
      addressSpace: map['addressSpace'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
    );
  }
}

