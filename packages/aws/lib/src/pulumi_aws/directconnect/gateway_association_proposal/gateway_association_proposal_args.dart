// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GatewayAssociationProposal.
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

  GatewayAssociationProposalArgs({
    this.allowedPrefixes,
    required this.associatedGatewayId,
    required this.dxGatewayId,
    required this.dxGatewayOwnerAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedPrefixesValue = allowedPrefixes;
    if (allowedPrefixesValue != null) {
      map['allowedPrefixes'] = allowedPrefixesValue;
    }
    map['associatedGatewayId'] = associatedGatewayId;
    map['dxGatewayId'] = dxGatewayId;
    map['dxGatewayOwnerAccountId'] = dxGatewayOwnerAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GatewayAssociationProposalArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationProposalArgs(
      allowedPrefixes:
          pulumi.Input.asOptionalInput<List<String>>(map['allowedPrefixes']),
      associatedGatewayId:
          pulumi.Input.asInput<String>(map['associatedGatewayId']),
      dxGatewayId: pulumi.Input.asInput<String>(map['dxGatewayId']),
      dxGatewayOwnerAccountId:
          pulumi.Input.asInput<String>(map['dxGatewayOwnerAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
