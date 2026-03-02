// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_gateway_association_proposal_gateway_association_proposal_args_doc}
/// The set of arguments for GatewayAssociationProposal.
/// {@endtemplate}
/// {@macro pulumi_directconnect_gateway_association_proposal_gateway_association_proposal_args_doc}
class GatewayAssociationProposalArgs {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  final pulumi.Input<String> associatedGatewayId;
  /// Direct Connect Gateway identifier.
  final pulumi.Input<String> dxGatewayId;
  /// AWS Account identifier of the Direct Connect Gateway's owner.
  final pulumi.Input<String> dxGatewayOwnerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayAssociationProposalArgs].
  /// [allowedPrefixes] VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  /// [associatedGatewayId] The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [dxGatewayId] Direct Connect Gateway identifier.
  /// [dxGatewayOwnerAccountId] AWS Account identifier of the Direct Connect Gateway's owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GatewayAssociationProposalArgs({
    this.allowedPrefixes,
    required this.associatedGatewayId,
    required this.dxGatewayId,
    required this.dxGatewayOwnerAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associatedGatewayId': associatedGatewayId,
      'dxGatewayId': dxGatewayId,
      'dxGatewayOwnerAccountId': dxGatewayOwnerAccountId,
      'region': ?region,
    };
  }

  factory GatewayAssociationProposalArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationProposalArgs(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : (((map['allowedPrefixes'] as List).cast<String>()).input()).input(),
      associatedGatewayId: (map['associatedGatewayId'] as String).input(),
      dxGatewayId: (map['dxGatewayId'] as String).input(),
      dxGatewayOwnerAccountId: (map['dxGatewayOwnerAccountId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

