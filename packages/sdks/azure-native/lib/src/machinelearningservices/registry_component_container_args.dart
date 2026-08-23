// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_properties.dart';

/// {@template pulumi_machinelearningservices_registry_component_container_args_doc}
/// The set of arguments for RegistryComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_component_container_args_doc}
class RegistryComponentContainerArgs {
  /// Container name.
  final pulumi.Input<String>? componentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentContainerProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryComponentContainerArgs].
  /// [componentName] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryComponentContainerArgs({
    this.componentName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?componentName,
      'properties': pulumi.Input.mapInputValue<ComponentContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryComponentContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryComponentContainerArgs(
      componentName: (() { final guardedValue = map['componentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ComponentContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
