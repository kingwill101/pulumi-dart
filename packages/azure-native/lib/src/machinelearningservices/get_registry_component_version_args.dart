// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_component_version_args_doc}
/// Arguments for getRegistryComponentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_component_version_args_doc}
class GetRegistryComponentVersionArgs {
  /// Container name.
  final pulumi.Input<String> componentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String> version;

  /// Creates a new [GetRegistryComponentVersionArgs].
  /// [componentName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  GetRegistryComponentVersionArgs({
    required String componentName,
    required String registryName,
    required String resourceGroupName,
    required String version,
  }) :
      componentName = pulumi.Input.asInput<String>(componentName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetRegistryComponentVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryComponentVersionArgs(
      componentName: map['componentName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
    );
  }
}

