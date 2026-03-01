// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_code_container_args_doc}
/// The set of arguments for RegistryCodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_code_container_args_doc}
class RegistryCodeContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeContainerMachinelearningservices> codeContainerProperties;
  /// Container name.
  final pulumi.Input<String>? codeName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryCodeContainerArgs].
  /// [codeContainerProperties] [Required] Additional attributes of the entity.
  /// [codeName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  RegistryCodeContainerArgs({
    required pulumi.Output<CodeContainerMachinelearningservices> codeContainerProperties,
    pulumi.Output<String>? codeName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      codeContainerProperties = pulumi.Input.asInput<CodeContainerMachinelearningservices>(codeContainerProperties),
      codeName = pulumi.Input.asOptionalInput<String>(codeName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeContainerProperties': codeContainerProperties,
      'codeName': ?codeName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryCodeContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCodeContainerArgs(
      codeContainerProperties: pulumi.Output.create<CodeContainerMachinelearningservices>(map['codeContainerProperties'] as CodeContainerMachinelearningservices),
      codeName: map['codeName'] == null ? null : pulumi.Output.create<String>(map['codeName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

