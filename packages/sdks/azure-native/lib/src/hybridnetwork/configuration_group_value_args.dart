// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_value_with_secrets.dart';

/// {@template pulumi_hybridnetwork_configuration_group_value_args_doc}
/// The set of arguments for ConfigurationGroupValue.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_configuration_group_value_args_doc}
class ConfigurationGroupValueArgs {
  /// The name of the configuration group value.
  final pulumi.Input<String>? configurationGroupValueName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Hybrid configuration group value properties.
  final pulumi.Input<ConfigurationValueWithSecrets>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationGroupValueArgs].
  /// [configurationGroupValueName] The name of the configuration group value.
  /// [location] The geo-location where the resource lives
  /// [properties] Hybrid configuration group value properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const ConfigurationGroupValueArgs({
    this.configurationGroupValueName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupValueName': ?configurationGroupValueName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationValueWithSecrets, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConfigurationGroupValueArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupValueArgs(
      configurationGroupValueName: (() { final guardedValue = map['configurationGroupValueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationValueWithSecrets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

