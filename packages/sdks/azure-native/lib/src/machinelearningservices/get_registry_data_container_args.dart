// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_data_container_args_doc}
/// Arguments for getRegistryDataContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_data_container_args_doc}
class GetRegistryDataContainerArgs {
  /// Container name.
  final pulumi.Input<String> name;

  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryDataContainerArgs].
  /// [name] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryDataContainerArgs({
    required this.name,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryDataContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryDataContainerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
