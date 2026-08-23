// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NSX DHCP Server
class WorkloadNetworkDhcpServerResponse {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'SERVER'.
  final pulumi.Input<String> dhcpType;
  /// Display name of the DHCP entity.
  final pulumi.Input<String>? displayName;
  /// DHCP Server Lease Time.
  final pulumi.Input<double>? leaseTime;
  /// The provisioning state
  final pulumi.Input<String> provisioningState;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// NSX Segments consuming DHCP.
  final pulumi.Input<List<String>> segments;
  /// DHCP Server Address.
  final pulumi.Input<String>? serverAddress;

  /// Creates a new [WorkloadNetworkDhcpServerResponse].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [leaseTime] DHCP Server Lease Time.
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [segments] NSX Segments consuming DHCP.
  /// [serverAddress] DHCP Server Address.
  const WorkloadNetworkDhcpServerResponse({
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
      dhcpType: pulumi.Input.fromValue(map['dhcpType'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseTime: (() { final guardedValue = map['leaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      segments: pulumi.Input.fromValue((map['segments'] as List).cast<String>()),
      serverAddress: (() { final guardedValue = map['serverAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
