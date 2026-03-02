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
    required this.resourceGroupName,
    required this.serviceName,
    required this.serviceRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'serviceRegistryName': serviceRegistryName,
    };
  }

  factory GetServiceRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceRegistryArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      serviceRegistryName: (map['serviceRegistryName'] as String).input(),
    );
  }
}

