// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingAcceleratorIpSet {
  /// List of IP addresses in the IP address set.
  final pulumi.Input<List<String>> ipAddresses;
  /// Type of IP addresses included in this IP set.
  final pulumi.Input<String> ipFamily;

  /// Creates a new [GetCustomRoutingAcceleratorIpSet].
  /// [ipAddresses] List of IP addresses in the IP address set.
  /// [ipFamily] Type of IP addresses included in this IP set.
  const GetCustomRoutingAcceleratorIpSet({
    required this.ipAddresses,
    required this.ipFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ipAddresses,
      'ipFamily': ipFamily,
    };
  }

  factory GetCustomRoutingAcceleratorIpSet.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorIpSet(
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
      ipFamily: pulumi.Input.fromValue(map['ipFamily'] as String),
    );
  }
}
