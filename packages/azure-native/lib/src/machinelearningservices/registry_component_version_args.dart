// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_component_version_args_doc}
/// The set of arguments for RegistryComponentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_component_version_args_doc}
class RegistryComponentVersionArgs {
  /// Container name.
  final pulumi.Input<String> componentName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentVersionMachinelearningservices> componentVersionProperties;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;

  /// Creates a new [RegistryComponentVersionArgs].
  /// [componentName] Container name.
  /// [componentVersionProperties] [Required] Additional attributes of the entity.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  RegistryComponentVersionArgs({
    required String componentName,
    required ComponentVersionMachinelearningservices componentVersionProperties,
    required String registryName,
    required String resourceGroupName,
    String? version,
  }) :
      componentName = pulumi.Input.asInput<String>(componentName),
      componentVersionProperties = pulumi.Input.asInput<ComponentVersionMachinelearningservices>(componentVersionProperties),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'componentVersionProperties': componentVersionProperties,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory RegistryComponentVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegistryComponentVersionArgs(
      componentName: map['componentName'] as String,
      componentVersionProperties: map['componentVersionProperties'] as ComponentVersionMachinelearningservices,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

