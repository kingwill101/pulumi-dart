// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingAcceleratorIpSet {
  final pulumi.Input<List<String>> ipAddresses;
  final pulumi.Input<String> ipFamily;

  /// Creates a new [GetCustomRoutingAcceleratorIpSet].
  /// [ipAddresses] Required.
  /// [ipFamily] Required.
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

