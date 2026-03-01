// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_registry_component_container_args_doc}
/// The set of arguments for RegistryComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_component_container_args_doc}
class RegistryComponentContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentContainerMachinelearningservices> componentContainerProperties;
  /// Container name.
  final pulumi.Input<String>? componentName;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryComponentContainerArgs].
  /// [componentContainerProperties] [Required] Additional attributes of the entity.
  /// [componentName] Container name.
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  RegistryComponentContainerArgs({
    required ComponentContainerMachinelearningservices componentContainerProperties,
    String? componentName,
    required String registryName,
    required String resourceGroupName,
  }) :
      componentContainerProperties = pulumi.Input.asInput<ComponentContainerMachinelearningservices>(componentContainerProperties),
      componentName = pulumi.Input.asOptionalInput<String>(componentName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentContainerProperties': componentContainerProperties,
      'componentName': ?componentName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryComponentContainerArgs.fromMap(Map<String, dynamic> map) {
    return RegistryComponentContainerArgs(
      componentContainerProperties: map['componentContainerProperties'] as ComponentContainerMachinelearningservices,
      componentName: map['componentName'] == null ? null : map['componentName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

