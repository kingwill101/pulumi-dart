// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayAssociation resources.
class GatewayAssociationState {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  ///
  /// > **NOTE:** `dx_gateway_id` and `associated_gateway_id` must be specified for single account Direct Connect gateway associations.
  ///
  /// > **NOTE:** If the `associated_gateway_id` is in another region, an alias in a new provider block for that region should be specified.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for single account Direct Connect gateway associations.
  final pulumi.Input<String>? associatedGatewayId;
  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for cross-account Direct Connect gateway associations.
  final pulumi.Input<String>? associatedGatewayOwnerAccountId;
  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  final pulumi.Input<String>? associatedGatewayType;
  /// The ID of the Direct Connect gateway association.
  final pulumi.Input<String>? dxGatewayAssociationId;
  /// The ID of the Direct Connect gateway.
  final pulumi.Input<String>? dxGatewayId;
  /// The ID of the AWS account that owns the Direct Connect gateway.
  final pulumi.Input<String>? dxGatewayOwnerAccountId;
  /// The ID of the Direct Connect gateway association proposal.
  /// Used for cross-account Direct Connect gateway associations.
  final pulumi.Input<String>? proposalId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Transit Gateway Attachment when the type is `transitGateway`.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Creates a new [GatewayAssociationState].
  /// [allowedPrefixes] VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  /// [associatedGatewayId] The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayOwnerAccountId] The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayType] The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  /// [dxGatewayAssociationId] The ID of the Direct Connect gateway association.
  /// [dxGatewayId] The ID of the Direct Connect gateway.
  /// [dxGatewayOwnerAccountId] The ID of the AWS account that owns the Direct Connect gateway.
  /// [proposalId] The ID of the Direct Connect gateway association proposal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] The ID of the Transit Gateway Attachment when the type is `transitGateway`.
  GatewayAssociationState({
    pulumi.Output<List<String>>? allowedPrefixes,
    pulumi.Output<String>? associatedGatewayId,
    pulumi.Output<String>? associatedGatewayOwnerAccountId,
    pulumi.Output<String>? associatedGatewayType,
    pulumi.Output<String>? dxGatewayAssociationId,
    pulumi.Output<String>? dxGatewayId,
    pulumi.Output<String>? dxGatewayOwnerAccountId,
    pulumi.Output<String>? proposalId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? transitGatewayAttachmentId,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associatedGatewayId = pulumi.Input.asOptionalInput<String>(associatedGatewayId),
      associatedGatewayOwnerAccountId = pulumi.Input.asOptionalInput<String>(associatedGatewayOwnerAccountId),
      associatedGatewayType = pulumi.Input.asOptionalInput<String>(associatedGatewayType),
      dxGatewayAssociationId = pulumi.Input.asOptionalInput<String>(dxGatewayAssociationId),
      dxGatewayId = pulumi.Input.asOptionalInput<String>(dxGatewayId),
      dxGatewayOwnerAccountId = pulumi.Input.asOptionalInput<String>(dxGatewayOwnerAccountId),
      proposalId = pulumi.Input.asOptionalInput<String>(proposalId),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associatedGatewayId': ?associatedGatewayId,
      'associatedGatewayOwnerAccountId': ?associatedGatewayOwnerAccountId,
      'associatedGatewayType': ?associatedGatewayType,
      'dxGatewayAssociationId': ?dxGatewayAssociationId,
      'dxGatewayId': ?dxGatewayId,
      'dxGatewayOwnerAccountId': ?dxGatewayOwnerAccountId,
      'proposalId': ?proposalId,
      'region': ?region,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
    };
  }

  factory GatewayAssociationState.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationState(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associatedGatewayId: map['associatedGatewayId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayId'] as String),
      associatedGatewayOwnerAccountId: map['associatedGatewayOwnerAccountId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayOwnerAccountId'] as String),
      associatedGatewayType: map['associatedGatewayType'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayType'] as String),
      dxGatewayAssociationId: map['dxGatewayAssociationId'] == null ? null : pulumi.Output.create<String>(map['dxGatewayAssociationId'] as String),
      dxGatewayId: map['dxGatewayId'] == null ? null : pulumi.Output.create<String>(map['dxGatewayId'] as String),
      dxGatewayOwnerAccountId: map['dxGatewayOwnerAccountId'] == null ? null : pulumi.Output.create<String>(map['dxGatewayOwnerAccountId'] as String),
      proposalId: map['proposalId'] == null ? null : pulumi.Output.create<String>(map['proposalId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
    );
  }
}

