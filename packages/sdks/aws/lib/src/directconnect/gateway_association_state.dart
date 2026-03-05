// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayAssociation resources.
class GatewayAssociationState {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  ///
  /// &gt; **NOTE:** `dx_gateway_id` and `associated_gateway_id` must be specified for single account Direct Connect gateway associations.
  ///
  /// &gt; **NOTE:** If the `associated_gateway_id` is in another region, an alias in a new provider block for that region should be specified.
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
    this.allowedPrefixes,
    this.associatedGatewayId,
    this.associatedGatewayOwnerAccountId,
    this.associatedGatewayType,
    this.dxGatewayAssociationId,
    this.dxGatewayId,
    this.dxGatewayOwnerAccountId,
    this.proposalId,
    this.region,
    this.transitGatewayAttachmentId,
  });

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
      allowedPrefixes: (() { final guardedValue = map['allowedPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      associatedGatewayId: (() { final guardedValue = map['associatedGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedGatewayOwnerAccountId: (() { final guardedValue = map['associatedGatewayOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedGatewayType: (() { final guardedValue = map['associatedGatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayAssociationId: (() { final guardedValue = map['dxGatewayAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayId: (() { final guardedValue = map['dxGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayOwnerAccountId: (() { final guardedValue = map['dxGatewayOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proposalId: (() { final guardedValue = map['proposalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

