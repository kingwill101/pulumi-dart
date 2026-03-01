// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_data_container_args_doc}
/// The set of arguments for RegistryDataContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_data_container_args_doc}
class RegistryDataContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<DataContainerMachinelearningservices> dataContainerProperties;
  /// Container name.
  final pulumi.Input<String>? name;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryDataContainerArgs].
  /// [dataContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  RegistryDataContainerArgs({
    required DataContainerMachinelearningservices dataContainerProperties,
    String? name,
    required String registryName,
    required String resourceGroupName,
  }) :
      dataContainerProperties = pulumi.Input.asInput<DataContainerMachinelearningservices>(dataContainerProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataContainerProperties': dataContainerProperties,
      'name': ?name,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryDataContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryDataContainerArgs(
      dataContainerProperties: map['dataContainerProperties'] as DataContainerMachinelearningservices,
      name: map['name'] == null ? null : map['name'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

