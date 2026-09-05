// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_gateway_association_gateway_association_args_doc}
/// The set of arguments for GatewayAssociation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_gateway_association_gateway_association_args_doc}
class GatewayAssociationArgs {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  ///
  /// &gt; **NOTE:** `dxGatewayId` and `associatedGatewayId` must be specified for single account Direct Connect gateway associations.
  ///
  /// &gt; **NOTE:** If the `associatedGatewayId` is in another region, an alias in a new provider block for that region should be specified.
  final pulumi.Input<List<String>?>? allowedPrefixes;
  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for single account Direct Connect gateway associations.
  final pulumi.Input<String?>? associatedGatewayId;
  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for cross-account Direct Connect gateway associations.
  final pulumi.Input<String?>? associatedGatewayOwnerAccountId;
  /// The ID of the Direct Connect gateway.
  final pulumi.Input<String> dxGatewayId;
  /// The ID of the Direct Connect gateway association proposal.
  /// Used for cross-account Direct Connect gateway associations.
  final pulumi.Input<String?>? proposalId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GatewayAssociationArgs].
  /// [allowedPrefixes] VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  /// [associatedGatewayId] The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [associatedGatewayOwnerAccountId] The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// [dxGatewayId] The ID of the Direct Connect gateway.
  /// [proposalId] The ID of the Direct Connect gateway association proposal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GatewayAssociationArgs({
    this.allowedPrefixes,
    this.associatedGatewayId,
    this.associatedGatewayOwnerAccountId,
    required this.dxGatewayId,
    this.proposalId,
    this.region,
  });

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
      allowedPrefixes: (() { final guardedValue = map['allowedPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      associatedGatewayId: (() { final guardedValue = map['associatedGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedGatewayOwnerAccountId: (() { final guardedValue = map['associatedGatewayOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayId: pulumi.Input.fromValue(map['dxGatewayId'] as String),
      proposalId: (() { final guardedValue = map['proposalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
