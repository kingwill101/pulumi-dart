// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_version_properties.dart';

/// {@template pulumi_machinelearningservices_registry_code_version_args_doc}
/// The set of arguments for RegistryCodeVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_code_version_args_doc}
class RegistryCodeVersionArgs {
  /// Container name.
  final pulumi.Input<String> codeName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeVersionProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryCodeVersionArgs].
  /// [codeName] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  const RegistryCodeVersionArgs({
    required this.codeName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeName': codeName,
      'properties': pulumi.Input.mapInputValue<CodeVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryCodeVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCodeVersionArgs(
      codeName: pulumi.Input.fromValue(map['codeName'] as String),
      properties: pulumi.Input.fromValue(CodeVersionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
