// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile {
  /// Specifies a list of Public IP IDs to use for Egress NAT.
  final List<String>? egressNatIpAddressIds;
  final List<String>? egressNatIpAddresses;
  final String? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  final String networkVirtualApplianceId;
  /// Specifies a list of Public IP IDs to use for this Next Generation Firewall.
  final List<String> publicIpAddressIds;
  final List<String>? publicIpAddresses;
  /// Specifies a list of trusted ranges to use for the Network.
  final List<String>? trustedAddressRanges;
  final String? trustedSubnetId;
  final String? untrustedSubnetId;
  /// The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  final String virtualHubId;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile].
  /// [egressNatIpAddressIds] Specifies a list of Public IP IDs to use for Egress NAT.
  /// [egressNatIpAddresses] Optional.
  /// [ipOfTrustForUserDefinedRoutes] Optional.
  /// [networkVirtualApplianceId] The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  /// [publicIpAddressIds] Specifies a list of Public IP IDs to use for this Next Generation Firewall.
  /// [publicIpAddresses] Optional.
  /// [trustedAddressRanges] Specifies a list of trusted ranges to use for the Network.
  /// [trustedSubnetId] Optional.
  /// [untrustedSubnetId] Optional.
  /// [virtualHubId] The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile({
    this.egressNatIpAddressIds,
    this.egressNatIpAddresses,
    this.ipOfTrustForUserDefinedRoutes,
    required this.networkVirtualApplianceId,
    required this.publicIpAddressIds,
    this.publicIpAddresses,
    this.trustedAddressRanges,
    this.trustedSubnetId,
    this.untrustedSubnetId,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNatIpAddressIds': ?egressNatIpAddressIds,
      'egressNatIpAddresses': ?egressNatIpAddresses,
      'ipOfTrustForUserDefinedRoutes': ?ipOfTrustForUserDefinedRoutes,
      'networkVirtualApplianceId': networkVirtualApplianceId,
      'publicIpAddressIds': publicIpAddressIds,
      'publicIpAddresses': ?publicIpAddresses,
      'trustedAddressRanges': ?trustedAddressRanges,
      'trustedSubnetId': ?trustedSubnetId,
      'untrustedSubnetId': ?untrustedSubnetId,
      'virtualHubId': virtualHubId,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile(
      egressNatIpAddressIds: map['egressNatIpAddressIds'] == null ? null : (map['egressNatIpAddressIds'] as List).cast<String>(),
      egressNatIpAddresses: map['egressNatIpAddresses'] == null ? null : (map['egressNatIpAddresses'] as List).cast<String>(),
      ipOfTrustForUserDefinedRoutes: map['ipOfTrustForUserDefinedRoutes'] == null ? null : map['ipOfTrustForUserDefinedRoutes'] as String,
      networkVirtualApplianceId: map['networkVirtualApplianceId'] as String,
      publicIpAddressIds: (map['publicIpAddressIds'] as List).cast<String>(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (map['publicIpAddresses'] as List).cast<String>(),
      trustedAddressRanges: map['trustedAddressRanges'] == null ? null : (map['trustedAddressRanges'] as List).cast<String>(),
      trustedSubnetId: map['trustedSubnetId'] == null ? null : map['trustedSubnetId'] as String,
      untrustedSubnetId: map['untrustedSubnetId'] == null ? null : map['untrustedSubnetId'] as String,
      virtualHubId: map['virtualHubId'] as String,
    );
  }
}

