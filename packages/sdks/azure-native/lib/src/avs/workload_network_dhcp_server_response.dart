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
      dhcpType: (map['dhcpType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      leaseTime: map['leaseTime'] == null ? null : (map['leaseTime']! as double).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision']! as double).input(),
      segments: ((map['segments'] as List).cast<String>()).input(),
      serverAddress: map['serverAddress'] == null ? null : (map['serverAddress']! as String).input(),
    );
  }
}

