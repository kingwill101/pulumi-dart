// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_model_version_args_doc}
/// The set of arguments for RegistryModelVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_model_version_args_doc}
class RegistryModelVersionArgs {
  /// Container name.
  final pulumi.Input<String> modelName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ModelVersionMachinelearningservices> modelVersionProperties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryModelVersionArgs].
  /// [modelName] Container name.
  /// [modelVersionProperties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  RegistryModelVersionArgs({
    required this.modelName,
    required this.modelVersionProperties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelName': modelName,
      'modelVersionProperties': modelVersionProperties,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryModelVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryModelVersionArgs(
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      modelVersionProperties: pulumi.Input.fromValue(map['modelVersionProperties'] as ModelVersionMachinelearningservices),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

