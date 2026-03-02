// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_environment_version_args_doc}
/// The set of arguments for RegistryEnvironmentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_environment_version_args_doc}
class RegistryEnvironmentVersionArgs {
  /// Container name.
  final pulumi.Input<String> environmentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentVersionMachinelearningservices> environmentVersionProperties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryEnvironmentVersionArgs].
  /// [environmentName] Container name.
  /// [environmentVersionProperties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  RegistryEnvironmentVersionArgs({
    required this.environmentName,
    required this.environmentVersionProperties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'environmentVersionProperties': environmentVersionProperties,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryEnvironmentVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnvironmentVersionArgs(
      environmentName: (map['environmentName'] as String).input(),
      environmentVersionProperties: (map['environmentVersionProperties'] as EnvironmentVersionMachinelearningservices).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

