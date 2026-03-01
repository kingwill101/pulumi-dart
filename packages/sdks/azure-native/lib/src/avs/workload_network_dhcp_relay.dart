// ignore_for_file: unused_element, unnecessary_cast


/// NSX DHCP Relay
class WorkloadNetworkDhcpRelay {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'RELAY'.
  final String dhcpType;
  /// Display name of the DHCP entity.
  final String? displayName;
  /// NSX revision number.
  final double? revision;
  /// DHCP Relay Addresses. Max 3.
  final List<String>? serverAddresses;

  /// Creates a new [WorkloadNetworkDhcpRelay].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [revision] NSX revision number.
  /// [serverAddresses] DHCP Relay Addresses. Max 3.
  WorkloadNetworkDhcpRelay({
    required this.dhcpType,
    this.displayName,
    this.revision,
    this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpType': dhcpType,
      'displayName': ?displayName,
      'revision': ?revision,
      'serverAddresses': ?serverAddresses,
    };
  }

  factory WorkloadNetworkDhcpRelay.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpRelay(
      dhcpType: map['dhcpType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      serverAddresses: map['serverAddresses'] == null ? null : (map['serverAddresses'] as List).cast<String>(),
    );
  }
}

