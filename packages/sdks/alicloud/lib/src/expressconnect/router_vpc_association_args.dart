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
    pulumi.Output<List<String>>? allowedPrefixes,
    required pulumi.Output<String> associationRegionId,
    required pulumi.Output<String> ecrId,
    required pulumi.Output<String> vpcId,
    pulumi.Output<int>? vpcOwnerId,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associationRegionId = pulumi.Input.asInput<String>(associationRegionId),
      ecrId = pulumi.Input.asInput<String>(ecrId),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<int>(vpcOwnerId);

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
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associationRegionId: pulumi.Output.create<String>(map['associationRegionId'] as String),
      ecrId: pulumi.Output.create<String>(map['ecrId'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<int>(map['vpcOwnerId'] as int),
    );
  }
}

