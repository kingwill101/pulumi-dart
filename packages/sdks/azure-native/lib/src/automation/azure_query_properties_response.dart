// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_settings_properties_response.dart';

/// Azure query for the update configuration.
class AzureQueryPropertiesResponse {
  /// List of locations to scope the query to.
  final pulumi.Input<List<String>>? locations;
  /// List of Subscription or Resource Group ARM Ids.
  final pulumi.Input<List<String>>? scope;
  /// Tag settings for the VM.
  final pulumi.Input<TagSettingsPropertiesResponse>? tagSettings;

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
      'tagSettings': ?pulumi.Input.mapOptionalInputValue<TagSettingsPropertiesResponse, Map<String, dynamic>>(tagSettings, (value) => value.toMap()),
    };
  }

  factory AzureQueryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureQueryPropertiesResponse(
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      scope: map['scope'] == null ? null : ((map['scope'] as List).cast<String>()).input(),
      tagSettings: map['tagSettings'] == null ? null : (TagSettingsPropertiesResponse.fromMap((map['tagSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

