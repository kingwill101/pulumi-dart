// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_properties.dart';

/// {@template pulumi_appplatform_container_registry_args_doc}
/// The set of arguments for ContainerRegistry.
/// {@endtemplate}
/// {@macro pulumi_appplatform_container_registry_args_doc}
class ContainerRegistryArgs {
  /// The name of the container registry.
  final pulumi.Input<String>? containerRegistryName;
  /// Properties of the container registry resource payload.
  final pulumi.Input<ContainerRegistryProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ContainerRegistryArgs].
  /// [containerRegistryName] The name of the container registry.
  /// [properties] Properties of the container registry resource payload.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ContainerRegistryArgs({
    String? containerRegistryName,
    ContainerRegistryProperties? properties,
    required String resourceGroupName,
    required String serviceName,
  }) :
      containerRegistryName = pulumi.Input.asOptionalInput<String>(containerRegistryName),
      properties = pulumi.Input.asOptionalInput<ContainerRegistryProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ContainerRegistryProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ContainerRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryArgs(
      containerRegistryName: map['containerRegistryName'] == null ? null : map['containerRegistryName'] as String,
      properties: map['properties'] == null ? null : ContainerRegistryProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

