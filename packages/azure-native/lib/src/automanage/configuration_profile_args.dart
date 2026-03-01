// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_properties.dart';

/// {@template pulumi_automanage_configuration_profile_args_doc}
/// The set of arguments for ConfigurationProfile.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_profile_args_doc}
class ConfigurationProfileArgs {
  /// Name of the configuration profile.
  final pulumi.Input<String>? configurationProfileName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of the configuration profile.
  final pulumi.Input<ConfigurationProfileProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationProfileArgs].
  /// [configurationProfileName] Name of the configuration profile.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of the configuration profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConfigurationProfileArgs({
    String? configurationProfileName,
    String? location,
    ConfigurationProfileProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      configurationProfileName = pulumi.Input.asOptionalInput<String>(configurationProfileName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConfigurationProfileProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileName': ?configurationProfileName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileArgs(
      configurationProfileName: map['configurationProfileName'] == null ? null : map['configurationProfileName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ConfigurationProfileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

