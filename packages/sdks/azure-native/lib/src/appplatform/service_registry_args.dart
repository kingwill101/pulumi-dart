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
  final pulumi.Input<String>? serviceRegistryName;

  /// Creates a new [ServiceRegistryArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [serviceRegistryName] The name of Service Registry.
  ServiceRegistryArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? serviceRegistryName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceRegistryName = pulumi.Input.asOptionalInput<String>(serviceRegistryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'serviceRegistryName': ?serviceRegistryName,
    };
  }

  factory ServiceRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ServiceRegistryArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      serviceRegistryName: map['serviceRegistryName'] == null ? null : pulumi.Output.create<String>(map['serviceRegistryName'] as String),
    );
  }
}

