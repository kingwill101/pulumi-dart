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
    required pulumi.Output<String> apiVersion,
    required pulumi.Output<String> lockName,
    required pulumi.Output<String> parentResourcePath,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> resourceProviderNamespace,
    required pulumi.Output<String> resourceType,
  }) :
      apiVersion = pulumi.Input.asInput<String>(apiVersion),
      lockName = pulumi.Input.asInput<String>(lockName),
      parentResourcePath = pulumi.Input.asInput<String>(parentResourcePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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

  factory GetManagementLockAtResourceLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementLockAtResourceLevelArgs(
      apiVersion: pulumi.Output.create<String>(map['apiVersion'] as String),
      lockName: pulumi.Output.create<String>(map['lockName'] as String),
      parentResourcePath: pulumi.Output.create<String>(map['parentResourcePath'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceProviderNamespace: pulumi.Output.create<String>(map['resourceProviderNamespace'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

