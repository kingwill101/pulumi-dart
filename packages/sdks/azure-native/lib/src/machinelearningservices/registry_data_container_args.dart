// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_container_properties.dart';

/// {@template pulumi_machinelearningservices_registry_data_container_args_doc}
/// The set of arguments for RegistryDataContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_data_container_args_doc}
class RegistryDataContainerArgs {
  /// Container name.
  final pulumi.Input<String?>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<DataContainerProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryDataContainerArgs].
  /// [name] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryDataContainerArgs({
    this.name,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<DataContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryDataContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryDataContainerArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(DataContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
