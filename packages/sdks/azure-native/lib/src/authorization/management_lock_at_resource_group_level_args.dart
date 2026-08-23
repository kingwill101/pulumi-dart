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
  /// The lock name. The lock name can be a maximum of 260 characters. It cannot contain &lt;, &gt; %, &, :, \, ?, /, or any control characters.
  final pulumi.Input<String>? lockName;
  /// Notes about the lock. Maximum of 512 characters.
  final pulumi.Input<String>? notes;
  /// The owners of the lock.
  final pulumi.Input<List<ManagementLockOwner>>? owners;
  /// The name of the resource group to lock.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagementLockAtResourceGroupLevelArgs].
  /// [level] The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  /// [lockName] The lock name. The lock name can be a maximum of 260 characters. It cannot contain &lt;, &gt; %, &, :, \, ?, /, or any control characters.
  /// [notes] Notes about the lock. Maximum of 512 characters.
  /// [owners] The owners of the lock.
  /// [resourceGroupName] The name of the resource group to lock.
  const ManagementLockAtResourceGroupLevelArgs({
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
      level: pulumi.Input.fromValue(map['level'] as String),
      lockName: (() { final guardedValue = map['lockName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementLockOwner>(guardedValue, (value) => ManagementLockOwner.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
