// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterVpcAssociation resources.
class RouterVpcAssociationState {
  /// The list of allowed route prefixes.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The ID of the association between the ECR and the VPC.
  final pulumi.Input<String>? associationId;
  /// The region ID of the resource to be associated.
  final pulumi.Input<String>? associationRegionId;
  /// The time when the association was created.
  final pulumi.Input<String>? createTime;
  /// The ECR ID.
  final pulumi.Input<String>? ecrId;
  /// The deployment state of the associated resource.
  final pulumi.Input<String>? status;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The ID of the Alibaba Cloud account that owns the VPC.
  /// > **NOTE:** If you want to connect to a network instance that belongs to a different account, `vpc_owner_id` is required.
  final pulumi.Input<int>? vpcOwnerId;

  /// Creates a new [RouterVpcAssociationState].
  /// [allowedPrefixes] The list of allowed route prefixes.
  /// [associationId] The ID of the association between the ECR and the VPC.
  /// [associationRegionId] The region ID of the resource to be associated.
  /// [createTime] The time when the association was created.
  /// [ecrId] The ECR ID.
  /// [status] The deployment state of the associated resource.
  /// [vpcId] The VPC ID.
  /// [vpcOwnerId] The ID of the Alibaba Cloud account that owns the VPC.
  RouterVpcAssociationState({
    this.allowedPrefixes,
    this.associationId,
    this.associationRegionId,
    this.createTime,
    this.ecrId,
    this.status,
    this.vpcId,
    this.vpcOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associationId': ?associationId,
      'associationRegionId': ?associationRegionId,
      'createTime': ?createTime,
      'ecrId': ?ecrId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory RouterVpcAssociationState.fromMap(Map<String, dynamic> map) {
    return RouterVpcAssociationState(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : ((map['allowedPrefixes'] as List).cast<String>()).input(),
      associationId: map['associationId'] == null ? null : (map['associationId'] as String).input(),
      associationRegionId: map['associationRegionId'] == null ? null : (map['associationRegionId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      ecrId: map['ecrId'] == null ? null : (map['ecrId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : (map['vpcOwnerId'] as int).input(),
    );
  }
}

