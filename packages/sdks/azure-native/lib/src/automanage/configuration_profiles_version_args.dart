// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_properties.dart';

/// {@template pulumi_automanage_configuration_profiles_version_args_doc}
/// The set of arguments for ConfigurationProfilesVersion.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_profiles_version_args_doc}
class ConfigurationProfilesVersionArgs {
  /// Name of the configuration profile.
  final pulumi.Input<String> configurationProfileName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of the configuration profile.
  final pulumi.Input<ConfigurationProfileProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The configuration profile version name.
  final pulumi.Input<String>? versionName;

  /// Creates a new [ConfigurationProfilesVersionArgs].
  /// [configurationProfileName] Name of the configuration profile.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of the configuration profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [versionName] The configuration profile version name.
  ConfigurationProfilesVersionArgs({
    required this.configurationProfileName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileName': configurationProfileName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'versionName': ?versionName,
    };
  }

  factory ConfigurationProfilesVersionArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfilesVersionArgs(
      configurationProfileName: pulumi.Input.fromValue(map['configurationProfileName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

