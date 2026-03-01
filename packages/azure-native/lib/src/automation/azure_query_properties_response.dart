// ignore_for_file: unused_element, unnecessary_cast

import 'tag_settings_properties_response.dart';

/// Azure query for the update configuration.
class AzureQueryPropertiesResponse {
  /// List of locations to scope the query to.
  final List<String>? locations;
  /// List of Subscription or Resource Group ARM Ids.
  final List<String>? scope;
  /// Tag settings for the VM.
  final TagSettingsPropertiesResponse? tagSettings;

  /// Creates a new [AzureQueryPropertiesResponse].
  /// [locations] List of locations to scope the query to.
  /// [scope] List of Subscription or Resource Group ARM Ids.
  /// [tagSettings] Tag settings for the VM.
  AzureQueryPropertiesResponse({
    this.locations,
    this.scope,
    this.tagSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'scope': ?scope,
      'tagSettings': ?tagSettings == null ? null : tagSettings!.toMap(),
    };
  }

  factory AzureQueryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureQueryPropertiesResponse(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      scope: map['scope'] == null ? null : (map['scope'] as List).cast<String>(),
      tagSettings: map['tagSettings'] == null ? null : TagSettingsPropertiesResponse.fromMap((map['tagSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

