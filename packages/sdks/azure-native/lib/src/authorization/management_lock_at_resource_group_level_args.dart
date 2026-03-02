// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_owner.dart';

/// {@template pulumi_authorization_management_lock_at_resource_group_level_args_doc}
/// The set of arguments for ManagementLockAtResourceGroupLevel.
/// {@endtemplate}
/// {@macro pulumi_authorization_management_lock_at_resource_group_level_args_doc}
class ManagementLockAtResourceGroupLevelArgs {
  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  final pulumi.Input<String> level;
  /// The lock name. The lock name can be a maximum of 260 characters. It cannot contain <, > %, &, :, \, ?, /, or any control characters.
  final pulumi.Input<String>? lockName;
  /// Notes about the lock. Maximum of 512 characters.
  final pulumi.Input<String>? notes;
  /// The owners of the lock.
  final pulumi.Input<List<ManagementLockOwner>>? owners;
  /// The name of the resource group to lock.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagementLockAtResourceGroupLevelArgs].
  /// [level] The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  /// [lockName] The lock name. The lock name can be a maximum of 260 characters. It cannot contain <, > %, &, :, \, ?, /, or any control characters.
  /// [notes] Notes about the lock. Maximum of 512 characters.
  /// [owners] The owners of the lock.
  /// [resourceGroupName] The name of the resource group to lock.
  ManagementLockAtResourceGroupLevelArgs({
    required this.level,
    this.lockName,
    this.notes,
    this.owners,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'lockName': ?lockName,
      'notes': ?notes,
      'owners': ?pulumi.Input.mapOptionalInputValue<List<ManagementLockOwner>, List<Map<String, dynamic>>>(owners, (value) => pulumi.Input.encodeList<ManagementLockOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagementLockAtResourceGroupLevelArgs.fromMap(Map<String, dynamic> map) {
    return ManagementLockAtResourceGroupLevelArgs(
      level: (map['level'] as String).input(),
      lockName: map['lockName'] == null ? null : (map['lockName'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      owners: map['owners'] == null ? null : (pulumi.Input.decodeList<ManagementLockOwner>(map['owners'], (value) => ManagementLockOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

