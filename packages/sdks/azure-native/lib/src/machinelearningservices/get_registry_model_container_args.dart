// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_model_container_args_doc}
/// Arguments for getRegistryModelContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_model_container_args_doc}
class GetRegistryModelContainerArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> modelName;

  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryModelContainerArgs].
  /// [modelName] Container name. This is case-sensitive.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryModelContainerArgs({
    required this.modelName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelName': modelName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryModelContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryModelContainerArgs(
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
