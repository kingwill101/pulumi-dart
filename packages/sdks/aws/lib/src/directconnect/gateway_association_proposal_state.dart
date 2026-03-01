// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayAssociationProposal resources.
class GatewayAssociationProposalState {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  final pulumi.Input<String>? associatedGatewayId;
  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  final pulumi.Input<String>? associatedGatewayOwnerAccountId;
  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  final pulumi.Input<String>? associatedGatewayType;
  /// Direct Connect Gateway identifier.
  final pulumi.Input<String>? dxGatewayId;
  /// AWS Account identifier of the Direct Connect Gateway's owner.
  final pulumi.Input<String>? dxGatewayOwnerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayAssociationProposalState].
  /// [allowedPrefixes] VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  /// [associatedGatewayId] The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayOwnerAccountId] The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayType] The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  /// [dxGatewayId] Direct Connect Gateway identifier.
  /// [dxGatewayOwnerAccountId] AWS Account identifier of the Direct Connect Gateway's owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GatewayAssociationProposalState({
    pulumi.Output<List<String>>? allowedPrefixes,
    pulumi.Output<String>? associatedGatewayId,
    pulumi.Output<String>? associatedGatewayOwnerAccountId,
    pulumi.Output<String>? associatedGatewayType,
    pulumi.Output<String>? dxGatewayId,
    pulumi.Output<String>? dxGatewayOwnerAccountId,
    pulumi.Output<String>? region,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associatedGatewayId = pulumi.Input.asOptionalInput<String>(associatedGatewayId),
      associatedGatewayOwnerAccountId = pulumi.Input.asOptionalInput<String>(associatedGatewayOwnerAccountId),
      associatedGatewayType = pulumi.Input.asOptionalInput<String>(associatedGatewayType),
      dxGatewayId = pulumi.Input.asOptionalInput<String>(dxGatewayId),
      dxGatewayOwnerAccountId = pulumi.Input.asOptionalInput<String>(dxGatewayOwnerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associatedGatewayId': ?associatedGatewayId,
      'associatedGatewayOwnerAccountId': ?associatedGatewayOwnerAccountId,
      'associatedGatewayType': ?associatedGatewayType,
      'dxGatewayId': ?dxGatewayId,
      'dxGatewayOwnerAccountId': ?dxGatewayOwnerAccountId,
      'region': ?region,
    };
  }

  factory GatewayAssociationProposalState.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationProposalState(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associatedGatewayId: map['associatedGatewayId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayId'] as String),
      associatedGatewayOwnerAccountId: map['associatedGatewayOwnerAccountId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayOwnerAccountId'] as String),
      associatedGatewayType: map['associatedGatewayType'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayType'] as String),
      dxGatewayId: map['dxGatewayId'] == null ? null : pulumi.Output.create<String>(map['dxGatewayId'] as String),
      dxGatewayOwnerAccountId: map['dxGatewayOwnerAccountId'] == null ? null : pulumi.Output.create<String>(map['dxGatewayOwnerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

