// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The virtual network properties.
class VirtualNetworkProfileResponse {
  /// The ID of the virtual network.
  final pulumi.Input<String>? id;
  /// The name of the subnet.
  final pulumi.Input<String>? subnet;

  /// Creates a new [VirtualNetworkProfileResponse].
  /// [id] The ID of the virtual network.
  /// [subnet] The name of the subnet.
  VirtualNetworkProfileResponse({
    this.id,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'subnet': ?subnet,
    };
  }

  factory VirtualNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfileResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
    );
  }
}

