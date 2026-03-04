// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_management_lock_at_resource_group_level_args_doc}
/// Arguments for getManagementLockAtResourceGroupLevel.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_management_lock_at_resource_group_level_args_doc}
class GetManagementLockAtResourceGroupLevelArgs {
  /// The name of the lock to get.
  final pulumi.Input<String> lockName;

  /// The name of the locked resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagementLockAtResourceGroupLevelArgs].
  /// [lockName] The name of the lock to get.
  /// [resourceGroupName] The name of the locked resource group.
  GetManagementLockAtResourceGroupLevelArgs({
    required this.lockName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockName': lockName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagementLockAtResourceGroupLevelArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagementLockAtResourceGroupLevelArgs(
      lockName: pulumi.Input.fromValue(map['lockName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
