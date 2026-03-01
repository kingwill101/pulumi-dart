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
  ConfigurationGroupValueArgs({
    String? configurationGroupValueName,
    String? location,
    ConfigurationValueWithSecrets? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      configurationGroupValueName = pulumi.Input.asOptionalInput<String>(configurationGroupValueName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConfigurationValueWithSecrets>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      configurationGroupValueName: map['configurationGroupValueName'] == null ? null : map['configurationGroupValueName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ConfigurationValueWithSecrets.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

