// ignore_for_file: unused_element, unnecessary_cast


/// Individual port mappings for inbound NAT rule created for backend pool.
class NatRulePortMappingResponse {
  /// Backend port.
  final int? backendPort;
  /// Frontend port.
  final int? frontendPort;
  /// Name of inbound NAT rule.
  final String? inboundNatRuleName;

  /// Creates a new [NatRulePortMappingResponse].
  /// [backendPort] Backend port.
  /// [frontendPort] Frontend port.
  /// [inboundNatRuleName] Name of inbound NAT rule.
  NatRulePortMappingResponse({
    this.backendPort,
    this.frontendPort,
    this.inboundNatRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'frontendPort': ?frontendPort,
      'inboundNatRuleName': ?inboundNatRuleName,
    };
  }

  factory NatRulePortMappingResponse.fromMap(Map<String, dynamic> map) {
    return NatRulePortMappingResponse(
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      frontendPort: map['frontendPort'] == null ? null : map['frontendPort'] as int,
      inboundNatRuleName: map['inboundNatRuleName'] == null ? null : map['inboundNatRuleName'] as String,
    );
  }
}

