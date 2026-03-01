// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_environment_container_args_doc}
/// The set of arguments for RegistryEnvironmentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_environment_container_args_doc}
class RegistryEnvironmentContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentContainerMachinelearningservices> environmentContainerProperties;
  /// Container name.
  final pulumi.Input<String>? environmentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryEnvironmentContainerArgs].
  /// [environmentContainerProperties] [Required] Additional attributes of the entity.
  /// [environmentName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  RegistryEnvironmentContainerArgs({
    required pulumi.Output<EnvironmentContainerMachinelearningservices> environmentContainerProperties,
    pulumi.Output<String>? environmentName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentContainerProperties = pulumi.Input.asInput<EnvironmentContainerMachinelearningservices>(environmentContainerProperties),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentContainerProperties': environmentContainerProperties,
      'environmentName': ?environmentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryEnvironmentContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnvironmentContainerArgs(
      environmentContainerProperties: pulumi.Output.create<EnvironmentContainerMachinelearningservices>(map['environmentContainerProperties'] as EnvironmentContainerMachinelearningservices),
      environmentName: map['environmentName'] == null ? null : pulumi.Output.create<String>(map['environmentName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

