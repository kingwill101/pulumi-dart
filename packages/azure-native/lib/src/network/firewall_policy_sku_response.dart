// ignore_for_file: unused_element, unnecessary_cast


/// SKU of Firewall policy.
class FirewallPolicySkuResponse {
  /// Tier of Firewall Policy.
  final String? tier;

  /// Creates a new [FirewallPolicySkuResponse].
  /// [tier] Tier of Firewall Policy.
  FirewallPolicySkuResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory FirewallPolicySkuResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySkuResponse(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

