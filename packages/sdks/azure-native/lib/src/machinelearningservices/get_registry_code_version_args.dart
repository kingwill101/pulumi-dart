// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_code_version_args_doc}
/// Arguments for getRegistryCodeVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_code_version_args_doc}
class GetRegistryCodeVersionArgs {
  /// Container name.
  final pulumi.Input<String> codeName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String> version;

  /// Creates a new [GetRegistryCodeVersionArgs].
  /// [codeName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  GetRegistryCodeVersionArgs({
    required pulumi.Output<String> codeName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> version,
  }) :
      codeName = pulumi.Input.asInput<String>(codeName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeName': codeName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetRegistryCodeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryCodeVersionArgs(
      codeName: pulumi.Output.create<String>(map['codeName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

