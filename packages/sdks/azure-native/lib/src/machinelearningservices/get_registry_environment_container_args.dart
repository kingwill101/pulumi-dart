// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_registry_environment_container_args_doc}
/// Arguments for getRegistryEnvironmentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_registry_environment_container_args_doc}
class GetRegistryEnvironmentContainerArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> environmentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryEnvironmentContainerArgs].
  /// [environmentName] Container name. This is case-sensitive.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryEnvironmentContainerArgs({
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryEnvironmentContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnvironmentContainerArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

