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
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : ((map['transitGatewayAttachmentId'] as String).input()).input(),
      transitGatewayPolicyTableId: map['transitGatewayPolicyTableId'] == null ? null : ((map['transitGatewayPolicyTableId'] as String).input()).input(),
    );
  }
}

