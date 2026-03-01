// ignore_for_file: unused_element, unnecessary_cast


/// NSX DHCP Relay
class WorkloadNetworkDhcpRelayResponse {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'RELAY'.
  final String dhcpType;
  /// Display name of the DHCP entity.
  final String? displayName;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// NSX Segments consuming DHCP.
  final List<String> segments;
  /// DHCP Relay Addresses. Max 3.
  final List<String>? serverAddresses;

  /// Creates a new [WorkloadNetworkDhcpRelayResponse].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [segments] NSX Segments consuming DHCP.
  /// [serverAddresses] DHCP Relay Addresses. Max 3.
  WorkloadNetworkDhcpRelayResponse({
    required this.dhcpType,
    this.displayName,
    required this.provisioningState,
    this.revision,
    required this.segments,
    this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpType': dhcpType,
      'displayName': ?displayName,
      'provisioningState': provisioningState,
      'revision': ?revision,
      'segments': segments,
      'serverAddresses': ?serverAddresses,
    };
  }

  factory WorkloadNetworkDhcpRelayResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpRelayResponse(
      dhcpType: map['dhcpType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      provisioningState: map['provisioningState'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      segments: (map['segments'] as List).cast<String>(),
      serverAddresses: map['serverAddresses'] == null ? null : (map['serverAddresses'] as List).cast<String>(),
    );
  }
}

