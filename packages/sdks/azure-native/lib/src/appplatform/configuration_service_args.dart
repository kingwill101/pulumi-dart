// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_properties.dart';

/// {@template pulumi_appplatform_configuration_service_args_doc}
/// The set of arguments for ConfigurationService.
/// {@endtemplate}
/// {@macro pulumi_appplatform_configuration_service_args_doc}
class ConfigurationServiceArgs {
  /// The name of Application Configuration Service.
  final pulumi.Input<String>? configurationServiceName;
  /// Application Configuration Service properties payload
  final pulumi.Input<ConfigurationServiceProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ConfigurationServiceArgs].
  /// [configurationServiceName] The name of Application Configuration Service.
  /// [properties] Application Configuration Service properties payload
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ConfigurationServiceArgs({
    this.configurationServiceName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationServiceName': ?configurationServiceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationServiceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ConfigurationServiceArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceArgs(
      configurationServiceName: map['configurationServiceName'] == null ? null : (map['configurationServiceName'] as String).input(),
      properties: map['properties'] == null ? null : (ConfigurationServiceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

