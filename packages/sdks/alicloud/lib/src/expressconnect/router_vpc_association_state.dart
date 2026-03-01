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
    pulumi.Output<List<String>>? allowedPrefixes,
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? associationRegionId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ecrId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<int>? vpcOwnerId,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      associationRegionId = pulumi.Input.asOptionalInput<String>(associationRegionId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ecrId = pulumi.Input.asOptionalInput<String>(ecrId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<int>(vpcOwnerId);

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
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      associationRegionId: map['associationRegionId'] == null ? null : pulumi.Output.create<String>(map['associationRegionId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ecrId: map['ecrId'] == null ? null : pulumi.Output.create<String>(map['ecrId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<int>(map['vpcOwnerId'] as int),
    );
  }
}

