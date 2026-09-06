// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_service_registry_args_doc}
/// The set of arguments for ServiceRegistry.
/// {@endtemplate}
/// {@macro pulumi_appplatform_service_registry_args_doc}
class ServiceRegistryArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// The name of Service Registry.
  final pulumi.Input<String?>? serviceRegistryName;

  /// Creates a new [ServiceRegistryArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [serviceRegistryName] The name of Service Registry.
  const ServiceRegistryArgs({
    required this.resourceGroupName,
    required this.serviceName,
    this.serviceRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'serviceRegistryName': ?serviceRegistryName,
    };
  }

  factory ServiceRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ServiceRegistryArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceRegistryName: (() { final guardedValue = map['serviceRegistryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
