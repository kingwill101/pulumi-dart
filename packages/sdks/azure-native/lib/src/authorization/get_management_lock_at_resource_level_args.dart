// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_management_lock_at_resource_level_args_doc}
/// Arguments for getManagementLockAtResourceLevel.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_management_lock_at_resource_level_args_doc}
class GetManagementLockAtResourceLevelArgs {
  /// The API version to use for this operation.
  final pulumi.Input<String> apiVersion;

  /// The name of lock.
  final pulumi.Input<String> lockName;

  /// An extra path parameter needed in some services, like SQL Databases.
  final pulumi.Input<String> parentResourcePath;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;

  /// The type of the resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetManagementLockAtResourceLevelArgs].
  /// [apiVersion] The API version to use for this operation.
  /// [lockName] The name of lock.
  /// [parentResourcePath] An extra path parameter needed in some services, like SQL Databases.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [resourceType] The type of the resource.
  GetManagementLockAtResourceLevelArgs({
    required this.apiVersion,
    required this.lockName,
    required this.parentResourcePath,
    required this.resourceGroupName,
    required this.resourceName,
    required this.resourceProviderNamespace,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'lockName': lockName,
      'parentResourcePath': parentResourcePath,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'resourceType': resourceType,
    };
  }

  factory GetManagementLockAtResourceLevelArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagementLockAtResourceLevelArgs(
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      lockName: pulumi.Input.fromValue(map['lockName'] as String),
      parentResourcePath: pulumi.Input.fromValue(
        map['parentResourcePath'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceProviderNamespace: pulumi.Input.fromValue(
        map['resourceProviderNamespace'] as String,
      ),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
