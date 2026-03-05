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
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagSettings: (() { final guardedValue = map['tagSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagSettingsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

