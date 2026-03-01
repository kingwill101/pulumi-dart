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
    required pulumi.Output<String> environmentName,
    required pulumi.Output<EnvironmentVersionMachinelearningservices> environmentVersionProperties,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? version,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      environmentVersionProperties = pulumi.Input.asInput<EnvironmentVersionMachinelearningservices>(environmentVersionProperties),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      environmentVersionProperties: pulumi.Output.create<EnvironmentVersionMachinelearningservices>(map['environmentVersionProperties'] as EnvironmentVersionMachinelearningservices),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

