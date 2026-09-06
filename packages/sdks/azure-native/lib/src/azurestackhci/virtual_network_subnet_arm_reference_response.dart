// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Virtual Network subnet
class VirtualNetworkSubnetArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Network subnet.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [VirtualNetworkSubnetArmReferenceResponse].
  /// [resourceId] The Azure Resource ID for a Virtual Network subnet.
  const VirtualNetworkSubnetArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory VirtualNetworkSubnetArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetArmReferenceResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
