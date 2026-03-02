// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ipaddress_settings_response.dart';

/// Defines the network interface ip settings.
class NicIPSettingsResponse {
  /// Gets or sets the nic allocation method.
  final pulumi.Input<String>? allocationMethod;
  /// Gets or sets the dns servers.
  final pulumi.Input<List<String>>? dnsServers;
  /// Gets or sets the gateway.
  final pulumi.Input<List<String>>? gateway;
  /// Gets or sets the ip address for the nic.
  final pulumi.Input<String>? ipAddress;
  /// Gets or sets the IP address information being reported for this NIC. This contains the same IPv4 information above plus IPV6 information.
  final pulumi.Input<List<NicIPAddressSettingsResponse>> ipAddressInfo;
  /// Gets or sets the primary server.
  final pulumi.Input<String> primaryWinsServer;
  /// Gets or sets the secondary server.
  final pulumi.Input<String> secondaryWinsServer;
  /// Gets or sets the mask.
  final pulumi.Input<String>? subnetMask;

  /// Creates a new [NicIPSettingsResponse].
  /// [allocationMethod] Gets or sets the nic allocation method.
  /// [dnsServers] Gets or sets the dns servers.
  /// [gateway] Gets or sets the gateway.
  /// [ipAddress] Gets or sets the ip address for the nic.
  /// [ipAddressInfo] Gets or sets the IP address information being reported for this NIC. This contains the same IPv4 information above plus IPV6 information.
  /// [primaryWinsServer] Gets or sets the primary server.
  /// [secondaryWinsServer] Gets or sets the secondary server.
  /// [subnetMask] Gets or sets the mask.
  NicIPSettingsResponse({
    this.allocationMethod,
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    required this.ipAddressInfo,
    required this.primaryWinsServer,
    required this.secondaryWinsServer,
    this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': ?allocationMethod,
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'ipAddressInfo': pulumi.Input.mapInputValue<List<NicIPAddressSettingsResponse>, List<Map<String, dynamic>>>(ipAddressInfo, (value) => pulumi.Input.encodeList<NicIPAddressSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryWinsServer': primaryWinsServer,
      'secondaryWinsServer': secondaryWinsServer,
      'subnetMask': ?subnetMask,
    };
  }

  factory NicIPSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NicIPSettingsResponse(
      allocationMethod: map['allocationMethod'] == null ? null : (map['allocationMethod']! as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : ((map['gateway']! as List).cast<String>()).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipAddressInfo: (pulumi.Input.decodeList<NicIPAddressSettingsResponse>(map['ipAddressInfo'], (value) => NicIPAddressSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      primaryWinsServer: (map['primaryWinsServer'] as String).input(),
      secondaryWinsServer: (map['secondaryWinsServer'] as String).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask']! as String).input(),
    );
  }
}

