// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_server_properties.dart';

/// {@template pulumi_appplatform_config_server_args_doc}
/// The set of arguments for ConfigServer.
/// {@endtemplate}
/// {@macro pulumi_appplatform_config_server_args_doc}
class ConfigServerArgs {
  /// Properties of the Config Server resource
  final pulumi.Input<ConfigServerProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ConfigServerArgs].
  /// [properties] Properties of the Config Server resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ConfigServerArgs({
    ConfigServerProperties? properties,
    required String resourceGroupName,
    required String serviceName,
  }) :
      properties = pulumi.Input.asOptionalInput<ConfigServerProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigServerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ConfigServerArgs.fromMap(Map<String, dynamic> map) {
    return ConfigServerArgs(
      properties: map['properties'] == null ? null : ConfigServerProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

