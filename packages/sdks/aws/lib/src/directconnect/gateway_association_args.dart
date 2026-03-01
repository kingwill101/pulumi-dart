// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_gateway_association_gateway_association_args_doc}
/// The set of arguments for GatewayAssociation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_gateway_association_gateway_association_args_doc}
class GatewayAssociationArgs {
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
  /// The ID of the Direct Connect gateway.
  final pulumi.Input<String> dxGatewayId;
  /// The ID of the Direct Connect gateway association proposal.
  /// Used for cross-account Direct Connect gateway associations.
  final pulumi.Input<String>? proposalId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayAssociationArgs].
  /// [allowedPrefixes] VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  /// [associatedGatewayId] The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayOwnerAccountId] The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [dxGatewayId] The ID of the Direct Connect gateway.
  /// [proposalId] The ID of the Direct Connect gateway association proposal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GatewayAssociationArgs({
    pulumi.Output<List<String>>? allowedPrefixes,
    pulumi.Output<String>? associatedGatewayId,
    pulumi.Output<String>? associatedGatewayOwnerAccountId,
    required pulumi.Output<String> dxGatewayId,
    pulumi.Output<String>? proposalId,
    pulumi.Output<String>? region,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associatedGatewayId = pulumi.Input.asOptionalInput<String>(associatedGatewayId),
      associatedGatewayOwnerAccountId = pulumi.Input.asOptionalInput<String>(associatedGatewayOwnerAccountId),
      dxGatewayId = pulumi.Input.asInput<String>(dxGatewayId),
      proposalId = pulumi.Input.asOptionalInput<String>(proposalId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associatedGatewayId': ?associatedGatewayId,
      'associatedGatewayOwnerAccountId': ?associatedGatewayOwnerAccountId,
      'dxGatewayId': dxGatewayId,
      'proposalId': ?proposalId,
      'region': ?region,
    };
  }

  factory GatewayAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationArgs(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associatedGatewayId: map['associatedGatewayId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayId'] as String),
      associatedGatewayOwnerAccountId: map['associatedGatewayOwnerAccountId'] == null ? null : pulumi.Output.create<String>(map['associatedGatewayOwnerAccountId'] as String),
      dxGatewayId: pulumi.Output.create<String>(map['dxGatewayId'] as String),
      proposalId: map['proposalId'] == null ? null : pulumi.Output.create<String>(map['proposalId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

