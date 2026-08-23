// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_data.dart';

/// {@template pulumi_machinelearningservices_registry_data_version_args_doc}
/// The set of arguments for RegistryDataVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_data_version_args_doc}
class RegistryDataVersionArgs {
  /// Container name.
  final pulumi.Input<String> name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<MLTableData> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryDataVersionArgs].
  /// [name] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  const RegistryDataVersionArgs({
    required this.name,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<MLTableData, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryDataVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryDataVersionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(MLTableData.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
