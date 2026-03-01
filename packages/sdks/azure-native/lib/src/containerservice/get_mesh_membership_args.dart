// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_mesh_membership_args_doc}
/// Arguments for getMeshMembership.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_mesh_membership_args_doc}
class GetMeshMembershipArgs {
  /// The name of the mesh membership.
  final pulumi.Input<String> meshMembershipName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetMeshMembershipArgs].
  /// [meshMembershipName] The name of the mesh membership.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  GetMeshMembershipArgs({
    required pulumi.Output<String> meshMembershipName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      meshMembershipName = pulumi.Input.asInput<String>(meshMembershipName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshMembershipName': meshMembershipName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetMeshMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshMembershipArgs(
      meshMembershipName: pulumi.Output.create<String>(map['meshMembershipName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

