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
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayPolicyTableId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayPolicyTableId = pulumi.Input.asOptionalInput<String>(transitGatewayPolicyTableId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayPolicyTableId: map['transitGatewayPolicyTableId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayPolicyTableId'] as String),
    );
  }
}

