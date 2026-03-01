// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_service_registry_args_doc}
/// Arguments for getServiceRegistry.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_service_registry_args_doc}
class GetServiceRegistryArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// The name of Service Registry.
  final pulumi.Input<String> serviceRegistryName;

  /// Creates a new [GetServiceRegistryArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [serviceRegistryName] The name of Service Registry.
  GetServiceRegistryArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> serviceRegistryName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceRegistryName = pulumi.Input.asInput<String>(serviceRegistryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'serviceRegistryName': serviceRegistryName,
    };
  }

  factory GetServiceRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceRegistryArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      serviceRegistryName: pulumi.Output.create<String>(map['serviceRegistryName'] as String),
    );
  }
}

