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
  /// > **NOTE:** If you want to connect to a network instance that belongs to a different account, `vpc_owner_id` is required.
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
      allowedPrefixes: map['allowedPrefixes'] == null ? null : ((map['allowedPrefixes']! as List).cast<String>()).input(),
      associationRegionId: (map['associationRegionId'] as String).input(),
      ecrId: (map['ecrId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : (map['vpcOwnerId']! as int).input(),
    );
  }
}

