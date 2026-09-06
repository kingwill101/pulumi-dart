// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_properties.dart';

/// {@template pulumi_appplatform_container_registry_args_doc}
/// The set of arguments for ContainerRegistry.
/// {@endtemplate}
/// {@macro pulumi_appplatform_container_registry_args_doc}
class ContainerRegistryArgs {
  /// The name of the container registry.
  final pulumi.Input<String?>? containerRegistryName;
  /// Properties of the container registry resource payload.
  final pulumi.Input<ContainerRegistryProperties?>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ContainerRegistryArgs].
  /// [containerRegistryName] The name of the container registry.
  /// [properties] Properties of the container registry resource payload.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const ContainerRegistryArgs({
    this.containerRegistryName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      containerRegistryName: (() { final guardedValue = map['containerRegistryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerRegistryProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
