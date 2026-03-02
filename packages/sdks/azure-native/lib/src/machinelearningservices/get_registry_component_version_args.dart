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
    required this.componentName,
    required this.registryName,
    required this.resourceGroupName,
    required this.version,
  });

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
      componentName: (map['componentName'] as String).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

