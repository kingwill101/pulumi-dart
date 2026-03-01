// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_membership_properties.dart';

/// {@template pulumi_containerservice_mesh_membership_args_doc}
/// The set of arguments for MeshMembership.
/// {@endtemplate}
/// {@macro pulumi_containerservice_mesh_membership_args_doc}
class MeshMembershipArgs {
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// The name of the mesh membership.
  final pulumi.Input<String>? meshMembershipName;
  /// Mesh membership properties of a managed cluster.
  final pulumi.Input<MeshMembershipProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [MeshMembershipArgs].
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [meshMembershipName] The name of the mesh membership.
  /// [properties] Mesh membership properties of a managed cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  MeshMembershipArgs({
    String? managedBy,
    String? meshMembershipName,
    MeshMembershipProperties? properties,
    required String resourceGroupName,
    required String resourceName,
  }) :
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      meshMembershipName = pulumi.Input.asOptionalInput<String>(meshMembershipName),
      properties = pulumi.Input.asOptionalInput<MeshMembershipProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedBy': ?managedBy,
      'meshMembershipName': ?meshMembershipName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MeshMembershipProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory MeshMembershipArgs.fromMap(Map<String, dynamic> map) {
    return MeshMembershipArgs(
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      meshMembershipName: map['meshMembershipName'] == null ? null : map['meshMembershipName'] as String,
      properties: map['properties'] == null ? null : MeshMembershipProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

