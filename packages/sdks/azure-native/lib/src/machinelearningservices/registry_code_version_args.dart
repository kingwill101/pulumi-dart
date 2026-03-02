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
    required this.codeName,
    required this.codeVersionProperties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

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
      codeName: (map['codeName'] as String).input(),
      codeVersionProperties: (map['codeVersionProperties'] as CodeVersionMachinelearningservices).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

