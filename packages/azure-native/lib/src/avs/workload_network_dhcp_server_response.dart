// ignore_for_file: unused_element, unnecessary_cast


/// NSX DHCP Server
class WorkloadNetworkDhcpServerResponse {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'SERVER'.
  final String dhcpType;
  /// Display name of the DHCP entity.
  final String? displayName;
  /// DHCP Server Lease Time.
  final double? leaseTime;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// NSX Segments consuming DHCP.
  final List<String> segments;
  /// DHCP Server Address.
  final String? serverAddress;

  /// Creates a new [WorkloadNetworkDhcpServerResponse].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [leaseTime] DHCP Server Lease Time.
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [segments] NSX Segments consuming DHCP.
  /// [serverAddress] DHCP Server Address.
  WorkloadNetworkDhcpServerResponse({
    required this.dhcpType,
    this.displayName,
    this.leaseTime,
    required this.provisioningState,
    this.revision,
    required this.segments,
    this.serverAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpType': dhcpType,
      'displayName': ?displayName,
      'leaseTime': ?leaseTime,
      'provisioningState': provisioningState,
      'revision': ?revision,
      'segments': segments,
      'serverAddress': ?serverAddress,
    };
  }

  factory WorkloadNetworkDhcpServerResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpServerResponse(
      dhcpType: map['dhcpType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      leaseTime: map['leaseTime'] == null ? null : map['leaseTime'] as double,
      provisioningState: map['provisioningState'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      segments: (map['segments'] as List).cast<String>(),
      serverAddress: map['serverAddress'] == null ? null : map['serverAddress'] as String,
    );
  }
}

