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
  const WorkloadNetworkDhcpServer({
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
      dhcpType: pulumi.Input.fromValue(map['dhcpType'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseTime: (() { final guardedValue = map['leaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      serverAddress: (() { final guardedValue = map['serverAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

