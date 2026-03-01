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
  GetRegistryDataVersionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> version,
  }) :
      name = pulumi.Input.asInput<String>(name),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

