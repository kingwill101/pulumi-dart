// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_data.dart';

/// {@template pulumi_machinelearningservices_registry_data_version_args_doc}
/// The set of arguments for RegistryDataVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_data_version_args_doc}
class RegistryDataVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<MLTableData> dataVersionBaseProperties;
  /// Container name.
  final pulumi.Input<String> name;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryDataVersionArgs].
  /// [dataVersionBaseProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  RegistryDataVersionArgs({
    required pulumi.Output<MLTableData> dataVersionBaseProperties,
    required pulumi.Output<String> name,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? version,
  }) :
      dataVersionBaseProperties = pulumi.Input.asInput<MLTableData>(dataVersionBaseProperties),
      name = pulumi.Input.asInput<String>(name),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersionBaseProperties': pulumi.Input.mapInputValue<MLTableData, Map<String, dynamic>>(dataVersionBaseProperties, (value) => value.toMap()),
      'name': name,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryDataVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryDataVersionArgs(
      dataVersionBaseProperties: pulumi.Output.create<MLTableData>(MLTableData.fromMap((map['dataVersionBaseProperties'] as Map).cast<String, dynamic>())),
      name: pulumi.Output.create<String>(map['name'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

