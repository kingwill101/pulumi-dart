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
    required String modelName,
    required ModelVersionMachinelearningservices modelVersionProperties,
    required String registryName,
    required String resourceGroupName,
    String? version,
  }) :
      modelName = pulumi.Input.asInput<String>(modelName),
      modelVersionProperties = pulumi.Input.asInput<ModelVersionMachinelearningservices>(modelVersionProperties),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      modelName: map['modelName'] as String,
      modelVersionProperties: map['modelVersionProperties'] as ModelVersionMachinelearningservices,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

