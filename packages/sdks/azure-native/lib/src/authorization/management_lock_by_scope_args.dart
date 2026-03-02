// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_owner.dart';

/// {@template pulumi_authorization_management_lock_by_scope_args_doc}
/// The set of arguments for ManagementLockByScope.
/// {@endtemplate}
/// {@macro pulumi_authorization_management_lock_by_scope_args_doc}
class ManagementLockByScopeArgs {
  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  final pulumi.Input<String> level;
  /// The name of lock.
  final pulumi.Input<String>? lockName;
  /// Notes about the lock. Maximum of 512 characters.
  final pulumi.Input<String>? notes;
  /// The owners of the lock.
  final pulumi.Input<List<ManagementLockOwner>>? owners;
  /// The scope for the lock. When providing a scope for the assignment, use '/subscriptions/{subscriptionId}' for subscriptions, '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups, and '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePathIfPresent}/{resourceType}/{resourceName}' for resources.
  final pulumi.Input<String> scope;

  /// Creates a new [ManagementLockByScopeArgs].
  /// [level] The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  /// [lockName] The name of lock.
  /// [notes] Notes about the lock. Maximum of 512 characters.
  /// [owners] The owners of the lock.
  /// [scope] The scope for the lock. When providing a scope for the assignment, use '/subscriptions/{subscriptionId}' for subscriptions, '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups, and '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePathIfPresent}/{resourceType}/{resourceName}' for resources.
  ManagementLockByScopeArgs({
    required this.level,
    this.lockName,
    this.notes,
    this.owners,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'lockName': ?lockName,
      'notes': ?notes,
      'owners': ?pulumi.Input.mapOptionalInputValue<List<ManagementLockOwner>, List<Map<String, dynamic>>>(owners, (value) => pulumi.Input.encodeList<ManagementLockOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
    };
  }

  factory ManagementLockByScopeArgs.fromMap(Map<String, dynamic> map) {
    return ManagementLockByScopeArgs(
      level: (map['level'] as String).input(),
      lockName: map['lockName'] == null ? null : (map['lockName'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      owners: map['owners'] == null ? null : (pulumi.Input.decodeList<ManagementLockOwner>(map['owners'], (value) => ManagementLockOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

