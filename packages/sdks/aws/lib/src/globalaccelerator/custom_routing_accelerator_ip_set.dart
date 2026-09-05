// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingAcceleratorIpSet {
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>?>? ipAddresses;
  /// The type of IP addresses included in this IP set.
  final pulumi.Input<String?>? ipFamily;

  /// Creates a new [CustomRoutingAcceleratorIpSet].
  /// [ipAddresses] The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [ipFamily] The type of IP addresses included in this IP set.
  const CustomRoutingAcceleratorIpSet({
    this.ipAddresses,
    this.ipFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses,
      'ipFamily': ?ipFamily,
    };
  }

  factory CustomRoutingAcceleratorIpSet.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorIpSet(
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipFamily: (() { final guardedValue = map['ipFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
