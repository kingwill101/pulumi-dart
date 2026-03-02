// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingAcceleratorIpSet {
  final pulumi.Input<List<String>> ipAddresses;
  final pulumi.Input<String> ipFamily;

  /// Creates a new [GetCustomRoutingAcceleratorIpSet].
  /// [ipAddresses] Required.
  /// [ipFamily] Required.
  GetCustomRoutingAcceleratorIpSet({
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
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      ipFamily: (map['ipFamily'] as String).input(),
    );
  }
}

