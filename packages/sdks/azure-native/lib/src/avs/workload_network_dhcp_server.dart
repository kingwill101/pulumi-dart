// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NSX DHCP Server
class WorkloadNetworkDhcpServer {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'SERVER'.
  final pulumi.Input<String> dhcpType;
  /// Display name of the DHCP entity.
  final pulumi.Input<String>? displayName;
  /// DHCP Server Lease Time.
  final pulumi.Input<double>? leaseTime;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// DHCP Server Address.
  final pulumi.Input<String>? serverAddress;

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
      dhcpType: (map['dhcpType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      leaseTime: map['leaseTime'] == null ? null : (map['leaseTime'] as double).input(),
      revision: map['revision'] == null ? null : (map['revision'] as double).input(),
      serverAddress: map['serverAddress'] == null ? null : (map['serverAddress'] as String).input(),
    );
  }
}

