// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GatewayAssociation.
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

  GatewayAssociationArgs({
    this.allowedPrefixes,
    this.associatedGatewayId,
    this.associatedGatewayOwnerAccountId,
    required this.dxGatewayId,
    this.proposalId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedPrefixesValue = allowedPrefixes;
    if (allowedPrefixesValue != null) {
      map['allowedPrefixes'] = allowedPrefixesValue;
    }
    final associatedGatewayIdValue = associatedGatewayId;
    if (associatedGatewayIdValue != null) {
      map['associatedGatewayId'] = associatedGatewayIdValue;
    }
    final associatedGatewayOwnerAccountIdValue =
        associatedGatewayOwnerAccountId;
    if (associatedGatewayOwnerAccountIdValue != null) {
      map['associatedGatewayOwnerAccountId'] =
          associatedGatewayOwnerAccountIdValue;
    }
    map['dxGatewayId'] = dxGatewayId;
    final proposalIdValue = proposalId;
    if (proposalIdValue != null) {
      map['proposalId'] = proposalIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GatewayAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAssociationArgs(
      allowedPrefixes:
          pulumi.Input.asOptionalInput<List<String>>(map['allowedPrefixes']),
      associatedGatewayId:
          pulumi.Input.asOptionalInput<String>(map['associatedGatewayId']),
      associatedGatewayOwnerAccountId: pulumi.Input.asOptionalInput<String>(
          map['associatedGatewayOwnerAccountId']),
      dxGatewayId: pulumi.Input.asInput<String>(map['dxGatewayId']),
      proposalId: pulumi.Input.asOptionalInput<String>(map['proposalId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
