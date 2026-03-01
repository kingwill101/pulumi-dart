// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_container_registry_args_doc}
/// Arguments for getContainerRegistry.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_container_registry_args_doc}
class GetContainerRegistryArgs {
  /// The name of the container registry.
  final pulumi.Input<String> containerRegistryName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetContainerRegistryArgs].
  /// [containerRegistryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetContainerRegistryArgs({
    required pulumi.Output<String> containerRegistryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      containerRegistryName = pulumi.Input.asInput<String>(containerRegistryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetContainerRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistryArgs(
      containerRegistryName: pulumi.Output.create<String>(map['containerRegistryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

