// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_settings_properties.dart';

/// Azure query for the update configuration.
class AzureQueryProperties {
  /// List of locations to scope the query to.
  final pulumi.Input<List<String>>? locations;
  /// List of Subscription or Resource Group ARM Ids.
  final pulumi.Input<List<String>>? scope;
  /// Tag settings for the VM.
  final pulumi.Input<TagSettingsProperties>? tagSettings;

  /// Creates a new [AzureQueryProperties].
  /// [locations] List of locations to scope the query to.
  /// [scope] List of Subscription or Resource Group ARM Ids.
  /// [tagSettings] Tag settings for the VM.
  AzureQueryProperties({
    this.locations,
    this.scope,
    this.tagSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'scope': ?scope,
      'tagSettings': ?pulumi.Input.mapOptionalInputValue<TagSettingsProperties, Map<String, dynamic>>(tagSettings, (value) => value.toMap()),
    };
  }

  factory AzureQueryProperties.fromMap(Map<String, dynamic> map) {
    return AzureQueryProperties(
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      scope: map['scope'] == null ? null : ((map['scope']! as List).cast<String>()).input(),
      tagSettings: map['tagSettings'] == null ? null : (TagSettingsProperties.fromMap((map['tagSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

