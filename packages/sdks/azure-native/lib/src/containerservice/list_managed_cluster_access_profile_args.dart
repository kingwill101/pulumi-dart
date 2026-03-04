// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_managed_cluster_access_profile_args_doc}
/// Arguments for listManagedClusterAccessProfile.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_managed_cluster_access_profile_args_doc}
class ListManagedClusterAccessProfileArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// The name of the role for managed cluster accessProfile resource.
  final pulumi.Input<String> roleName;

  /// Creates a new [ListManagedClusterAccessProfileArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the managed cluster resource.
  /// [roleName] The name of the role for managed cluster accessProfile resource.
  ListManagedClusterAccessProfileArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'roleName': roleName,
    };
  }

  factory ListManagedClusterAccessProfileArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListManagedClusterAccessProfileArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
