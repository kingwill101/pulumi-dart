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
    this.allowedPrefixes,
    this.associatedGatewayId,
    this.associatedGatewayOwnerAccountId,
    this.associatedGatewayType,
    this.dxGatewayId,
    this.dxGatewayOwnerAccountId,
    this.region,
  });

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
      allowedPrefixes: (() {
        final guardedValue = map['allowedPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      associatedGatewayId: (() {
        final guardedValue = map['associatedGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedGatewayOwnerAccountId: (() {
        final guardedValue = map['associatedGatewayOwnerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedGatewayType: (() {
        final guardedValue = map['associatedGatewayType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dxGatewayId: (() {
        final guardedValue = map['dxGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dxGatewayOwnerAccountId: (() {
        final guardedValue = map['dxGatewayOwnerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
