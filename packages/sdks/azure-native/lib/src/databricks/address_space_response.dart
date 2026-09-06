// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.
class AddressSpaceResponse {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>?>? addressPrefixes;

  /// Creates a new [AddressSpaceResponse].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  const AddressSpaceResponse({
    this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
    };
  }

  factory AddressSpaceResponse.fromMap(Map<String, dynamic> map) {
    return AddressSpaceResponse(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
