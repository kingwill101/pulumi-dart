// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ARM ID for a Network Security Group.
class NatGatewayArmReference {
  /// The ARM ID for a Network Security Group.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [NatGatewayArmReference].
  /// [resourceId] The ARM ID for a Network Security Group.
  const NatGatewayArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory NatGatewayArmReference.fromMap(Map<String, dynamic> map) {
    return NatGatewayArmReference(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

