// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_code_container_args_doc}
/// Arguments for getRegistryCodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_code_container_args_doc}
class GetRegistryCodeContainerArgs {
  /// Container name.
  final pulumi.Input<String> codeName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryCodeContainerArgs].
  /// [codeName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryCodeContainerArgs({
    required pulumi.Output<String> codeName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      codeName = pulumi.Input.asInput<String>(codeName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeName': codeName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryCodeContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryCodeContainerArgs(
      codeName: pulumi.Output.create<String>(map['codeName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

