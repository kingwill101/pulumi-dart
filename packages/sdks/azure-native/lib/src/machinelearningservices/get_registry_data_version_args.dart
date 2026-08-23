// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_data_version_args_doc}
/// Arguments for getRegistryDataVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_data_version_args_doc}
class GetRegistryDataVersionArgs {
  /// Container name.
  final pulumi.Input<String> name;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String> version;

  /// Creates a new [GetRegistryDataVersionArgs].
  /// [name] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  const GetRegistryDataVersionArgs({
    required this.name,
    required this.registryName,
    required this.resourceGroupName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetRegistryDataVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryDataVersionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
