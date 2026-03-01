// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallPolicyThreatIntelligenceAllowlist {
  final List<String> fqdns;
  final List<String> ipAddresses;

  /// Creates a new [GetFirewallPolicyThreatIntelligenceAllowlist].
  /// [fqdns] Required.
  /// [ipAddresses] Required.
  GetFirewallPolicyThreatIntelligenceAllowlist({
    required this.fqdns,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetFirewallPolicyThreatIntelligenceAllowlist.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyThreatIntelligenceAllowlist(
      fqdns: (map['fqdns'] as List).cast<String>(),
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}

