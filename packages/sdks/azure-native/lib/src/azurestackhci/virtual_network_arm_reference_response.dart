// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Virtual Network
class VirtualNetworkArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Network.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [VirtualNetworkArmReferenceResponse].
  /// [resourceId] The Azure Resource ID for a Virtual Network.
  VirtualNetworkArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory VirtualNetworkArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArmReferenceResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

