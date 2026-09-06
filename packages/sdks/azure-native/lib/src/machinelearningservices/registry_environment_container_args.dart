// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_properties.dart';

/// {@template pulumi_machinelearningservices_registry_environment_container_args_doc}
/// The set of arguments for RegistryEnvironmentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_environment_container_args_doc}
class RegistryEnvironmentContainerArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String?>? environmentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentContainerProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryEnvironmentContainerArgs].
  /// [environmentName] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryEnvironmentContainerArgs({
    this.environmentName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': ?environmentName,
      'properties': pulumi.Input.mapInputValue<EnvironmentContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryEnvironmentContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnvironmentContainerArgs(
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(EnvironmentContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
