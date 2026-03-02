// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the network interface ip settings.
class NicIPSettings {
  /// Gets or sets the nic allocation method.
  final pulumi.Input<String>? allocationMethod;
  /// Gets or sets the dns servers.
  final pulumi.Input<List<String>>? dnsServers;
  /// Gets or sets the gateway.
  final pulumi.Input<List<String>>? gateway;
  /// Gets or sets the ip address for the nic.
  final pulumi.Input<String>? ipAddress;
  /// Gets or sets the mask.
  final pulumi.Input<String>? subnetMask;

  /// Creates a new [NicIPSettings].
  /// [allocationMethod] Gets or sets the nic allocation method.
  /// [dnsServers] Gets or sets the dns servers.
  /// [gateway] Gets or sets the gateway.
  /// [ipAddress] Gets or sets the ip address for the nic.
  /// [subnetMask] Gets or sets the mask.
  NicIPSettings({
    this.allocationMethod,
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': ?allocationMethod,
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'subnetMask': ?subnetMask,
    };
  }

  factory NicIPSettings.fromMap(Map<String, dynamic> map) {
    return NicIPSettings(
      allocationMethod: map['allocationMethod'] == null ? null : (map['allocationMethod']! as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : ((map['gateway']! as List).cast<String>()).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask']! as String).input(),
    );
  }
}

