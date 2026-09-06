// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_properties.dart';

/// {@template pulumi_machinelearningservices_registry_environment_version_args_doc}
/// The set of arguments for RegistryEnvironmentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_environment_version_args_doc}
class RegistryEnvironmentVersionArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> environmentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentVersionProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String?>? version;

  /// Creates a new [RegistryEnvironmentVersionArgs].
  /// [environmentName] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  const RegistryEnvironmentVersionArgs({
    required this.environmentName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'properties': pulumi.Input.mapInputValue<EnvironmentVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryEnvironmentVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnvironmentVersionArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      properties: pulumi.Input.fromValue(EnvironmentVersionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
