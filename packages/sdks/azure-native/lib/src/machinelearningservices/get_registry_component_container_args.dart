// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_component_container_args_doc}
/// Arguments for getRegistryComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_component_container_args_doc}
class GetRegistryComponentContainerArgs {
  /// Container name.
  final pulumi.Input<String> componentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryComponentContainerArgs].
  /// [componentName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRegistryComponentContainerArgs({
    required this.componentName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryComponentContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryComponentContainerArgs(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
