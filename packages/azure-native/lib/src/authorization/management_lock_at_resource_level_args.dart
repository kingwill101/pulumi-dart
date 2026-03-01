// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_owner.dart';

/// {@template pulumi_authorization_management_lock_at_resource_level_args_doc}
/// The set of arguments for ManagementLockAtResourceLevel.
/// {@endtemplate}
/// {@macro pulumi_authorization_management_lock_at_resource_level_args_doc}
class ManagementLockAtResourceLevelArgs {
  /// The API version to use for this operation.
  final pulumi.Input<String> apiVersion;
  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  final pulumi.Input<String> level;
  /// The name of lock. The lock name can be a maximum of 260 characters. It cannot contain <, > %, &, :, \, ?, /, or any control characters.
  final pulumi.Input<String>? lockName;
  /// Notes about the lock. Maximum of 512 characters.
  final pulumi.Input<String>? notes;
  /// The owners of the lock.
  final pulumi.Input<List<ManagementLockOwner>>? owners;
  /// The parent resource identity.
  final pulumi.Input<String> parentResourcePath;
  /// The name of the resource group containing the resource to lock.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource to lock.
  final pulumi.Input<String> resourceName;
  /// The resource provider namespace of the resource to lock.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The resource type of the resource to lock.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ManagementLockAtResourceLevelArgs].
  /// [apiVersion] The API version to use for this operation.
  /// [level] The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  /// [lockName] The name of lock. The lock name can be a maximum of 260 characters. It cannot contain <, > %, &, :, \, ?, /, or any control characters.
  /// [notes] Notes about the lock. Maximum of 512 characters.
  /// [owners] The owners of the lock.
  /// [parentResourcePath] The parent resource identity.
  /// [resourceGroupName] The name of the resource group containing the resource to lock.
  /// [resourceName] The name of the resource to lock.
  /// [resourceProviderNamespace] The resource provider namespace of the resource to lock.
  /// [resourceType] The resource type of the resource to lock.
  ManagementLockAtResourceLevelArgs({
    required String apiVersion,
    required String level,
    String? lockName,
    String? notes,
    List<ManagementLockOwner>? owners,
    required String parentResourcePath,
    required String resourceGroupName,
    required String resourceName,
    required String resourceProviderNamespace,
    required String resourceType,
  }) :
      apiVersion = pulumi.Input.asInput<String>(apiVersion),
      level = pulumi.Input.asInput<String>(level),
      lockName = pulumi.Input.asOptionalInput<String>(lockName),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      owners = pulumi.Input.asOptionalInput<List<ManagementLockOwner>>(owners),
      parentResourcePath = pulumi.Input.asInput<String>(parentResourcePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'level': level,
      'lockName': ?lockName,
      'notes': ?notes,
      'owners': ?pulumi.Input.mapOptionalInputValue<List<ManagementLockOwner>, List<Map<String, dynamic>>>(owners, (value) => pulumi.Input.encodeList<ManagementLockOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentResourcePath': parentResourcePath,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'resourceType': resourceType,
    };
  }

  factory ManagementLockAtResourceLevelArgs.fromMap(Map<String, dynamic> map) {
    return ManagementLockAtResourceLevelArgs(
      apiVersion: map['apiVersion'] as String,
      level: map['level'] as String,
      lockName: map['lockName'] == null ? null : map['lockName'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      owners: map['owners'] == null ? null : pulumi.Input.decodeList<ManagementLockOwner>(map['owners'], (value) => ManagementLockOwner.fromMap((value as Map).cast<String, dynamic>())),
      parentResourcePath: map['parentResourcePath'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      resourceProviderNamespace: map['resourceProviderNamespace'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

