// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_code_container_args_doc}
/// The set of arguments for RegistryCodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_code_container_args_doc}
class RegistryCodeContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeContainerMachinelearningservices>
  codeContainerProperties;

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
    required this.codeContainerProperties,
    this.codeName,
    required this.registryName,
    required this.resourceGroupName,
  });

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
      codeContainerProperties: pulumi.Input.fromValue(
        map['codeContainerProperties'] as CodeContainerMachinelearningservices,
      ),
      codeName: (() {
        final guardedValue = map['codeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
