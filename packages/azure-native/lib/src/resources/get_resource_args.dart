// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_resource_args_doc}
/// Arguments for getResource.
/// {@endtemplate}
/// {@macro pulumi_resources_get_resource_args_doc}
class GetResourceArgs {
  /// The API version to use for the operation.
  final pulumi.Input<String> apiVersion;
  /// The parent resource identity.
  final pulumi.Input<String> parentResourcePath;
  /// The name of the resource group containing the resource to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource to get.
  final pulumi.Input<String> resourceName;
  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The resource type of the resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetResourceArgs].
  /// [apiVersion] The API version to use for the operation.
  /// [parentResourcePath] The parent resource identity.
  /// [resourceGroupName] The name of the resource group containing the resource to get. The name is case insensitive.
  /// [resourceName] The name of the resource to get.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [resourceType] The resource type of the resource.
  GetResourceArgs({
    required String apiVersion,
    required String parentResourcePath,
    required String resourceGroupName,
    required String resourceName,
    required String resourceProviderNamespace,
    required String resourceType,
  }) :
      apiVersion = pulumi.Input.asInput<String>(apiVersion),
      parentResourcePath = pulumi.Input.asInput<String>(parentResourcePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'parentResourcePath': parentResourcePath,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'resourceType': resourceType,
    };
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      apiVersion: map['apiVersion'] as String,
      parentResourcePath: map['parentResourcePath'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      resourceProviderNamespace: map['resourceProviderNamespace'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

