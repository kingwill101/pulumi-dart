// ignore_for_file: unused_element, unnecessary_cast


/// Vpn NatRule mapping.
class VpnNatRuleMapping {
  /// Address space for Vpn NatRule mapping.
  final String? addressSpace;
  /// Port range for Vpn NatRule mapping.
  final String? portRange;

  /// Creates a new [VpnNatRuleMapping].
  /// [addressSpace] Address space for Vpn NatRule mapping.
  /// [portRange] Port range for Vpn NatRule mapping.
  VpnNatRuleMapping({
    this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VpnNatRuleMapping.fromMap(Map<String, dynamic> map) {
    return VpnNatRuleMapping(
      addressSpace: map['addressSpace'] == null ? null : map['addressSpace'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
    );
  }
}

