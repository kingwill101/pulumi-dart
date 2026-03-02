// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_settings_properties.dart';

/// Azure query for the update configuration.
class ConfigurationAssignmentFilterProperties {
  /// List of locations to scope the query to.
  final pulumi.Input<List<String>>? locations;
  /// List of allowed operating systems.
  final pulumi.Input<List<String>>? osTypes;
  /// List of allowed resource groups.
  final pulumi.Input<List<String>>? resourceGroups;
  /// List of allowed resources.
  final pulumi.Input<List<String>>? resourceTypes;
  /// Tag settings for the VM.
  final pulumi.Input<TagSettingsProperties>? tagSettings;

  /// Creates a new [ConfigurationAssignmentFilterProperties].
  /// [locations] List of locations to scope the query to.
  /// [osTypes] List of allowed operating systems.
  /// [resourceGroups] List of allowed resource groups.
  /// [resourceTypes] List of allowed resources.
  /// [tagSettings] Tag settings for the VM.
  ConfigurationAssignmentFilterProperties({
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
      'tagSettings': ?pulumi.Input.mapOptionalInputValue<TagSettingsProperties, Map<String, dynamic>>(tagSettings, (value) => value.toMap()),
    };
  }

  factory ConfigurationAssignmentFilterProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentFilterProperties(
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      osTypes: map['osTypes'] == null ? null : ((map['osTypes']! as List).cast<String>()).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups']! as List).cast<String>()).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
      tagSettings: map['tagSettings'] == null ? null : (TagSettingsProperties.fromMap((map['tagSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

