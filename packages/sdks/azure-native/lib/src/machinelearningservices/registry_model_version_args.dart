// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_version_properties.dart';

/// {@template pulumi_machinelearningservices_registry_model_version_args_doc}
/// The set of arguments for RegistryModelVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_model_version_args_doc}
class RegistryModelVersionArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> modelName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ModelVersionProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryModelVersionArgs].
  /// [modelName] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  const RegistryModelVersionArgs({
    required this.modelName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelName': modelName,
      'properties': pulumi.Input.mapInputValue<ModelVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryModelVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryModelVersionArgs(
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      properties: pulumi.Input.fromValue(ModelVersionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
