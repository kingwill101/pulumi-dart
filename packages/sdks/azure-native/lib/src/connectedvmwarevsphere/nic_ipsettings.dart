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
      allocationMethod: (() {
        final guardedValue = map['allocationMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsServers: (() {
        final guardedValue = map['dnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      gateway: (() {
        final guardedValue = map['gateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetMask: (() {
        final guardedValue = map['subnetMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
