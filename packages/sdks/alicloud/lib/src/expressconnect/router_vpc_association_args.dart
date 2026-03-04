// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_router_vpc_association_router_vpc_association_args_doc}
/// The set of arguments for RouterVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_vpc_association_router_vpc_association_args_doc}
class RouterVpcAssociationArgs {
  /// The list of allowed route prefixes.
  final pulumi.Input<List<String>>? allowedPrefixes;

  /// The region ID of the resource to be associated.
  final pulumi.Input<String> associationRegionId;

  /// The ECR ID.
  final pulumi.Input<String> ecrId;

  /// The VPC ID.
  final pulumi.Input<String> vpcId;

  /// The ID of the Alibaba Cloud account that owns the VPC.
  /// &gt; **NOTE:** If you want to connect to a network instance that belongs to a different account, `vpc_owner_id` is required.
  final pulumi.Input<int>? vpcOwnerId;

  /// Creates a new [RouterVpcAssociationArgs].
  /// [allowedPrefixes] The list of allowed route prefixes.
  /// [associationRegionId] The region ID of the resource to be associated.
  /// [ecrId] The ECR ID.
  /// [vpcId] The VPC ID.
  /// [vpcOwnerId] The ID of the Alibaba Cloud account that owns the VPC.
  RouterVpcAssociationArgs({
    this.allowedPrefixes,
    required this.associationRegionId,
    required this.ecrId,
    required this.vpcId,
    this.vpcOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associationRegionId': associationRegionId,
      'ecrId': ecrId,
      'vpcId': vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory RouterVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouterVpcAssociationArgs(
      allowedPrefixes: (() {
        final guardedValue = map['allowedPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      associationRegionId: pulumi.Input.fromValue(
        map['associationRegionId'] as String,
      ),
      ecrId: pulumi.Input.fromValue(map['ecrId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcOwnerId: (() {
        final guardedValue = map['vpcOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
