// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_service_configuration_recorder_status_properties.dart';

/// {@template pulumi_awsconnector_config_service_configuration_recorder_status_args_doc}
/// The set of arguments for ConfigServiceConfigurationRecorderStatus.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_config_service_configuration_recorder_status_args_doc}
class ConfigServiceConfigurationRecorderStatusArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of ConfigServiceConfigurationRecorderStatus
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ConfigServiceConfigurationRecorderStatusProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigServiceConfigurationRecorderStatusArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of ConfigServiceConfigurationRecorderStatus
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConfigServiceConfigurationRecorderStatusArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigServiceConfigurationRecorderStatusProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConfigServiceConfigurationRecorderStatusArgs.fromMap(Map<String, dynamic> map) {
    return ConfigServiceConfigurationRecorderStatusArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (ConfigServiceConfigurationRecorderStatusProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

