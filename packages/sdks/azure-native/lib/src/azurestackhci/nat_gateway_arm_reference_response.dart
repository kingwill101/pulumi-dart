// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ARM ID for a Network Security Group.
class NatGatewayArmReferenceResponse {
  /// The ARM ID for a Network Security Group.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [NatGatewayArmReferenceResponse].
  /// [resourceId] The ARM ID for a Network Security Group.
  NatGatewayArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory NatGatewayArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayArmReferenceResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

