// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingAcceleratorIpSet {
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The type of IP addresses included in this IP set.
  final pulumi.Input<String>? ipFamily;

  /// Creates a new [CustomRoutingAcceleratorIpSet].
  /// [ipAddresses] The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  /// [ipFamily] The type of IP addresses included in this IP set.
  CustomRoutingAcceleratorIpSet({
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
      ipAddresses: map['ipAddresses'] == null ? null : (((map['ipAddresses'] as List).cast<String>()).input()).input(),
      ipFamily: map['ipFamily'] == null ? null : ((map['ipFamily'] as String).input()).input(),
    );
  }
}

