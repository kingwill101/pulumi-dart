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
    this.managedBy,
    this.meshMembershipName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedBy': ?managedBy,
      'meshMembershipName': ?meshMembershipName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MeshMembershipProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory MeshMembershipArgs.fromMap(Map<String, dynamic> map) {
    return MeshMembershipArgs(
      managedBy: (() {
        final guardedValue = map['managedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      meshMembershipName: (() {
        final guardedValue = map['meshMembershipName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MeshMembershipProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
