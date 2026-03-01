// ignore_for_file: unused_element, unnecessary_cast

import 'tag_settings_properties_response.dart';

/// Azure query for the update configuration.
class ConfigurationAssignmentFilterPropertiesResponse {
  /// List of locations to scope the query to.
  final List<String>? locations;
  /// List of allowed operating systems.
  final List<String>? osTypes;
  /// List of allowed resource groups.
  final List<String>? resourceGroups;
  /// List of allowed resources.
  final List<String>? resourceTypes;
  /// Tag settings for the VM.
  final TagSettingsPropertiesResponse? tagSettings;

  /// Creates a new [ConfigurationAssignmentFilterPropertiesResponse].
  /// [locations] List of locations to scope the query to.
  /// [osTypes] List of allowed operating systems.
  /// [resourceGroups] List of allowed resource groups.
  /// [resourceTypes] List of allowed resources.
  /// [tagSettings] Tag settings for the VM.
  ConfigurationAssignmentFilterPropertiesResponse({
    this.locations,
    this.osTypes,
    this.resourceGroups,
    this.resourceTypes,
    this.tagSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'osTypes': ?osTypes,
      'resourceGroups': ?resourceGroups,
      'resourceTypes': ?resourceTypes,
      'tagSettings': ?tagSettings == null ? null : tagSettings!.toMap(),
    };
  }

  factory ConfigurationAssignmentFilterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentFilterPropertiesResponse(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      osTypes: map['osTypes'] == null ? null : (map['osTypes'] as List).cast<String>(),
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as List).cast<String>(),
      resourceTypes: map['resourceTypes'] == null ? null : (map['resourceTypes'] as List).cast<String>(),
      tagSettings: map['tagSettings'] == null ? null : TagSettingsPropertiesResponse.fromMap((map['tagSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

