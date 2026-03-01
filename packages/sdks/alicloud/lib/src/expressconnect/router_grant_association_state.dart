// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterGrantAssociation resources.
class RouterGrantAssociationState {
  /// The ID of the associated Leased Line Gateway instance.
  final pulumi.Input<String>? ecrId;
  /// The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  final pulumi.Input<int>? ecrOwnerAliUid;
  /// The ID of the network instance.
  final pulumi.Input<String>? instanceId;
  /// The ID of the region where the authorized network instance is located.
  final pulumi.Input<String>? instanceRegionId;
  /// The type of the network instance. Value:
  /// - `VBR`: the VBR instance.
  /// - `VPC`: VPC instance.
  final pulumi.Input<String>? instanceType;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [RouterGrantAssociationState].
  /// [ecrId] The ID of the associated Leased Line Gateway instance.
  /// [ecrOwnerAliUid] The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  /// [instanceId] The ID of the network instance.
  /// [instanceRegionId] The ID of the region where the authorized network instance is located.
  /// [instanceType] The type of the network instance. Value:
  /// [status] The status of the resource
  RouterGrantAssociationState({
    pulumi.Output<String>? ecrId,
    pulumi.Output<int>? ecrOwnerAliUid,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceRegionId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? status,
  }) :
      ecrId = pulumi.Input.asOptionalInput<String>(ecrId),
      ecrOwnerAliUid = pulumi.Input.asOptionalInput<int>(ecrOwnerAliUid),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceRegionId = pulumi.Input.asOptionalInput<String>(instanceRegionId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrId': ?ecrId,
      'ecrOwnerAliUid': ?ecrOwnerAliUid,
      'instanceId': ?instanceId,
      'instanceRegionId': ?instanceRegionId,
      'instanceType': ?instanceType,
      'status': ?status,
    };
  }

  factory RouterGrantAssociationState.fromMap(Map<String, dynamic> map) {
    return RouterGrantAssociationState(
      ecrId: map['ecrId'] == null ? null : pulumi.Output.create<String>(map['ecrId'] as String),
      ecrOwnerAliUid: map['ecrOwnerAliUid'] == null ? null : pulumi.Output.create<int>(map['ecrOwnerAliUid'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceRegionId: map['instanceRegionId'] == null ? null : pulumi.Output.create<String>(map['instanceRegionId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

