// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_configuration_service_args_doc}
/// Arguments for getConfigurationService.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_configuration_service_args_doc}
class GetConfigurationServiceArgs {
  /// The name of Application Configuration Service.
  final pulumi.Input<String> configurationServiceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetConfigurationServiceArgs].
  /// [configurationServiceName] The name of Application Configuration Service.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetConfigurationServiceArgs({
    required this.configurationServiceName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationServiceName': configurationServiceName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetConfigurationServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationServiceArgs(
      configurationServiceName: (map['configurationServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

