// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_properties.dart';

/// {@template pulumi_machinelearningservices_registry_model_container_args_doc}
/// The set of arguments for RegistryModelContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_model_container_args_doc}
class RegistryModelContainerArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? modelName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ModelContainerProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryModelContainerArgs].
  /// [modelName] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryModelContainerArgs({
    this.modelName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelName': ?modelName,
      'properties': pulumi.Input.mapInputValue<ModelContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryModelContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryModelContainerArgs(
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ModelContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
