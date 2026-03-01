// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration {
  /// The IP of trusted subnet for UDR.
  final String? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Trust subnet.
  final String? trustedSubnetId;
  /// The ID of the UnTrust subnet.
  final String? untrustedSubnetId;
  /// The ID of the Virtual Network.
  final String virtualNetworkId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration].
  /// [ipOfTrustForUserDefinedRoutes] The IP of trusted subnet for UDR.
  /// [trustedSubnetId] The ID of the Trust subnet.
  /// [untrustedSubnetId] The ID of the UnTrust subnet.
  /// [virtualNetworkId] The ID of the Virtual Network.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration({
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

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration(
      ipOfTrustForUserDefinedRoutes: map['ipOfTrustForUserDefinedRoutes'] == null ? null : map['ipOfTrustForUserDefinedRoutes'] as String,
      trustedSubnetId: map['trustedSubnetId'] == null ? null : map['trustedSubnetId'] as String,
      untrustedSubnetId: map['untrustedSubnetId'] == null ? null : map['untrustedSubnetId'] as String,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}

