// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_model_version_args_doc}
/// Arguments for getRegistryModelVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_model_version_args_doc}
class GetRegistryModelVersionArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> modelName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String> version;

  /// Creates a new [GetRegistryModelVersionArgs].
  /// [modelName] Container name. This is case-sensitive.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  GetRegistryModelVersionArgs({
    required String modelName,
    required String registryName,
    required String resourceGroupName,
    required String version,
  }) :
      modelName = pulumi.Input.asInput<String>(modelName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelName': modelName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetRegistryModelVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryModelVersionArgs(
      modelName: map['modelName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
    );
  }
}

