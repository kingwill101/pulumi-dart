// ignore_for_file: unused_element, unnecessary_cast


/// NSX DHCP Server
class WorkloadNetworkDhcpServer {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'SERVER'.
  final String dhcpType;
  /// Display name of the DHCP entity.
  final String? displayName;
  /// DHCP Server Lease Time.
  final double? leaseTime;
  /// NSX revision number.
  final double? revision;
  /// DHCP Server Address.
  final String? serverAddress;

  /// Creates a new [WorkloadNetworkDhcpServer].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [leaseTime] DHCP Server Lease Time.
  /// [revision] NSX revision number.
  /// [serverAddress] DHCP Server Address.
  WorkloadNetworkDhcpServer({
    required this.dhcpType,
    this.displayName,
    this.leaseTime,
    this.revision,
    this.serverAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpType': dhcpType,
      'displayName': ?displayName,
      'leaseTime': ?leaseTime,
      'revision': ?revision,
      'serverAddress': ?serverAddress,
    };
  }

  factory WorkloadNetworkDhcpServer.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpServer(
      dhcpType: map['dhcpType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      leaseTime: map['leaseTime'] == null ? null : map['leaseTime'] as double,
      revision: map['revision'] == null ? null : map['revision'] as double,
      serverAddress: map['serverAddress'] == null ? null : map['serverAddress'] as String,
    );
  }
}

