// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_model_container_args_doc}
/// The set of arguments for RegistryModelContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_model_container_args_doc}
class RegistryModelContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ModelContainerMachinelearningservices> modelContainerProperties;
  /// Container name.
  final pulumi.Input<String>? modelName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryModelContainerArgs].
  /// [modelContainerProperties] [Required] Additional attributes of the entity.
  /// [modelName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryModelContainerArgs({
    required this.modelContainerProperties,
    this.modelName,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelContainerProperties': modelContainerProperties,
      'modelName': ?modelName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryModelContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryModelContainerArgs(
      modelContainerProperties: pulumi.Input.fromValue(map['modelContainerProperties'] as ModelContainerMachinelearningservices),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

