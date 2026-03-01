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
  RegistryModelContainerArgs({
    required pulumi.Output<ModelContainerMachinelearningservices> modelContainerProperties,
    pulumi.Output<String>? modelName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      modelContainerProperties = pulumi.Input.asInput<ModelContainerMachinelearningservices>(modelContainerProperties),
      modelName = pulumi.Input.asOptionalInput<String>(modelName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      modelContainerProperties: pulumi.Output.create<ModelContainerMachinelearningservices>(map['modelContainerProperties'] as ModelContainerMachinelearningservices),
      modelName: map['modelName'] == null ? null : pulumi.Output.create<String>(map['modelName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

