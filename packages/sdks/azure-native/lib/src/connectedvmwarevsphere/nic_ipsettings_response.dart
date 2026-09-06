// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ipaddress_settings_response.dart';

/// Defines the network interface ip settings.
class NicIPSettingsResponse {
  /// Gets or sets the nic allocation method.
  final pulumi.Input<String?>? allocationMethod;
  /// Gets or sets the dns servers.
  final pulumi.Input<List<String>?>? dnsServers;
  /// Gets or sets the gateway.
  final pulumi.Input<List<String>?>? gateway;
  /// Gets or sets the ip address for the nic.
  final pulumi.Input<String?>? ipAddress;
  /// Gets or sets the IP address information being reported for this NIC. This contains the same IPv4 information above plus IPV6 information.
  final pulumi.Input<List<NicIPAddressSettingsResponse>> ipAddressInfo;
  /// Gets or sets the primary server.
  final pulumi.Input<String> primaryWinsServer;
  /// Gets or sets the secondary server.
  final pulumi.Input<String> secondaryWinsServer;
  /// Gets or sets the mask.
  final pulumi.Input<String?>? subnetMask;

  /// Creates a new [NicIPSettingsResponse].
  /// [allocationMethod] Gets or sets the nic allocation method.
  /// [dnsServers] Gets or sets the dns servers.
  /// [gateway] Gets or sets the gateway.
  /// [ipAddress] Gets or sets the ip address for the nic.
  /// [ipAddressInfo] Gets or sets the IP address information being reported for this NIC. This contains the same IPv4 information above plus IPV6 information.
  /// [primaryWinsServer] Gets or sets the primary server.
  /// [secondaryWinsServer] Gets or sets the secondary server.
  /// [subnetMask] Gets or sets the mask.
  const NicIPSettingsResponse({
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
      allocationMethod: (() { final guardedValue = map['allocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressInfo: pulumi.Input.fromValue(pulumi.Input.decodeList<NicIPAddressSettingsResponse>(map['ipAddressInfo']!, (value) => NicIPAddressSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      primaryWinsServer: pulumi.Input.fromValue(map['primaryWinsServer'] as String),
      secondaryWinsServer: pulumi.Input.fromValue(map['secondaryWinsServer'] as String),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
