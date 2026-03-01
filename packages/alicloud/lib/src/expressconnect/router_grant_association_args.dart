// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_router_grant_association_router_grant_association_args_doc}
/// The set of arguments for RouterGrantAssociation.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_grant_association_router_grant_association_args_doc}
class RouterGrantAssociationArgs {
  /// The ID of the associated Leased Line Gateway instance.
  final pulumi.Input<String> ecrId;
  /// The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  final pulumi.Input<int> ecrOwnerAliUid;
  /// The ID of the network instance.
  final pulumi.Input<String> instanceId;
  /// The ID of the region where the authorized network instance is located.
  final pulumi.Input<String> instanceRegionId;
  /// The type of the network instance. Value:
  /// - `VBR`: the VBR instance.
  /// - `VPC`: VPC instance.
  final pulumi.Input<String> instanceType;

  /// Creates a new [RouterGrantAssociationArgs].
  /// [ecrId] The ID of the associated Leased Line Gateway instance.
  /// [ecrOwnerAliUid] The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  /// [instanceId] The ID of the network instance.
  /// [instanceRegionId] The ID of the region where the authorized network instance is located.
  /// [instanceType] The type of the network instance. Value:
  RouterGrantAssociationArgs({
    required String ecrId,
    required int ecrOwnerAliUid,
    required String instanceId,
    required String instanceRegionId,
    required String instanceType,
  }) :
      ecrId = pulumi.Input.asInput<String>(ecrId),
      ecrOwnerAliUid = pulumi.Input.asInput<int>(ecrOwnerAliUid),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceRegionId = pulumi.Input.asInput<String>(instanceRegionId),
      instanceType = pulumi.Input.asInput<String>(instanceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrId': ecrId,
      'ecrOwnerAliUid': ecrOwnerAliUid,
      'instanceId': instanceId,
      'instanceRegionId': instanceRegionId,
      'instanceType': instanceType,
    };
  }

  factory RouterGrantAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouterGrantAssociationArgs(
      ecrId: map['ecrId'] as String,
      ecrOwnerAliUid: map['ecrOwnerAliUid'] as int,
      instanceId: map['instanceId'] as String,
      instanceRegionId: map['instanceRegionId'] as String,
      instanceType: map['instanceType'] as String,
    );
  }
}

