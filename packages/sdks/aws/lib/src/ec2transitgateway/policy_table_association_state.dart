// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyTableAssociation resources.
class PolicyTableAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the resource
  final pulumi.Input<String>? resourceId;

  /// Type of the resource
  final pulumi.Input<String>? resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  final pulumi.Input<String>? transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Identifier of the resource
  /// [resourceType] Type of the resource
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayPolicyTableId] Identifier of EC2 Transit Gateway Policy Table.
  PolicyTableAssociationState({
    this.region,
    this.resourceId,
    this.resourceType,
    this.transitGatewayAttachmentId,
    this.transitGatewayPolicyTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayPolicyTableId': ?transitGatewayPolicyTableId,
    };
  }

  factory PolicyTableAssociationState.fromMap(Map<String, dynamic> map) {
    return PolicyTableAssociationState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayAttachmentId: (() {
        final guardedValue = map['transitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayPolicyTableId: (() {
        final guardedValue = map['transitGatewayPolicyTableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
