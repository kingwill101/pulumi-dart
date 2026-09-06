// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_properties.dart';

/// {@template pulumi_machinelearningservices_registry_code_container_args_doc}
/// The set of arguments for RegistryCodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_code_container_args_doc}
class RegistryCodeContainerArgs {
  /// Container name.
  final pulumi.Input<String?>? codeName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeContainerProperties> properties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryCodeContainerArgs].
  /// [codeName] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryCodeContainerArgs({
    this.codeName,
    required this.properties,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeName': ?codeName,
      'properties': pulumi.Input.mapInputValue<CodeContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryCodeContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCodeContainerArgs(
      codeName: (() { final guardedValue = map['codeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(CodeContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
