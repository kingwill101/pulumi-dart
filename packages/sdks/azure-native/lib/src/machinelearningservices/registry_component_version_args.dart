// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_version_properties.dart';

/// {@template pulumi_machinelearningservices_registry_component_version_args_doc}
/// The set of arguments for RegistryComponentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_component_version_args_doc}
class RegistryComponentVersionArgs {
  /// Container name.
  final pulumi.Input<String> componentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentVersionProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryComponentVersionArgs].
  /// [componentName] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  const RegistryComponentVersionArgs({
    required this.componentName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'properties': pulumi.Input.mapInputValue<ComponentVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryComponentVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryComponentVersionArgs(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      properties: pulumi.Input.fromValue(ComponentVersionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
