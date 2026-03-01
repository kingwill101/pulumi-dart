// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration {
  final String? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Trust subnet.
  final String? trustedSubnetId;
  /// The ID of the UnTrust subnet.
  final String? untrustedSubnetId;
  /// The ID of the Virtual Network.
  final String virtualNetworkId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration].
  /// [ipOfTrustForUserDefinedRoutes] Optional.
  /// [trustedSubnetId] The ID of the Trust subnet.
  /// [untrustedSubnetId] The ID of the UnTrust subnet.
  /// [virtualNetworkId] The ID of the Virtual Network.
  NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration({
    this.ipOfTrustForUserDefinedRoutes,
    this.trustedSubnetId,
    this.untrustedSubnetId,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustForUserDefinedRoutes': ?ipOfTrustForUserDefinedRoutes,
      'trustedSubnetId': ?trustedSubnetId,
      'untrustedSubnetId': ?untrustedSubnetId,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration(
      ipOfTrustForUserDefinedRoutes: map['ipOfTrustForUserDefinedRoutes'] == null ? null : map['ipOfTrustForUserDefinedRoutes'] as String,
      trustedSubnetId: map['trustedSubnetId'] == null ? null : map['trustedSubnetId'] as String,
      untrustedSubnetId: map['untrustedSubnetId'] == null ? null : map['untrustedSubnetId'] as String,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}

