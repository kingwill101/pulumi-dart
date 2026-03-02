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
      configurationProfileName: (map['configurationProfileName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ConfigurationProfileProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      versionName: map['versionName'] == null ? null : (map['versionName']! as String).input(),
    );
  }
}

