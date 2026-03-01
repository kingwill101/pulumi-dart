// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_environment_version_args_doc}
/// Arguments for getRegistryEnvironmentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_environment_version_args_doc}
class GetRegistryEnvironmentVersionArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> environmentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String> version;

  /// Creates a new [GetRegistryEnvironmentVersionArgs].
  /// [environmentName] Container name. This is case-sensitive.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  GetRegistryEnvironmentVersionArgs({
    required String environmentName,
    required String registryName,
    required String resourceGroupName,
    required String version,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetRegistryEnvironmentVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnvironmentVersionArgs(
      environmentName: map['environmentName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
    );
  }
}

