// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_code_version_args_doc}
/// The set of arguments for RegistryCodeVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_code_version_args_doc}
class RegistryCodeVersionArgs {
  /// Container name.
  final pulumi.Input<String> codeName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeVersionMachinelearningservices> codeVersionProperties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryCodeVersionArgs].
  /// [codeName] Container name.
  /// [codeVersionProperties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  RegistryCodeVersionArgs({
    required pulumi.Output<String> codeName,
    required pulumi.Output<CodeVersionMachinelearningservices> codeVersionProperties,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? version,
  }) :
      codeName = pulumi.Input.asInput<String>(codeName),
      codeVersionProperties = pulumi.Input.asInput<CodeVersionMachinelearningservices>(codeVersionProperties),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeName': codeName,
      'codeVersionProperties': codeVersionProperties,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryCodeVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCodeVersionArgs(
      codeName: pulumi.Output.create<String>(map['codeName'] as String),
      codeVersionProperties: pulumi.Output.create<CodeVersionMachinelearningservices>(map['codeVersionProperties'] as CodeVersionMachinelearningservices),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

