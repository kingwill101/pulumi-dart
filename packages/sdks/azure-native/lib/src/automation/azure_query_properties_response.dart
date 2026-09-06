// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_settings_properties_response.dart';

/// Azure query for the update configuration.
class AzureQueryPropertiesResponse {
  /// List of locations to scope the query to.
  final pulumi.Input<List<String>?>? locations;
  /// List of Subscription or Resource Group ARM Ids.
  final pulumi.Input<List<String>?>? scope;
  /// Tag settings for the VM.
  final pulumi.Input<TagSettingsPropertiesResponse?>? tagSettings;

  /// Creates a new [AzureQueryPropertiesResponse].
  /// [locations] List of locations to scope the query to.
  /// [scope] List of Subscription or Resource Group ARM Ids.
  /// [tagSettings] Tag settings for the VM.
  const AzureQueryPropertiesResponse({
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
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagSettings: (() { final guardedValue = map['tagSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagSettingsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
