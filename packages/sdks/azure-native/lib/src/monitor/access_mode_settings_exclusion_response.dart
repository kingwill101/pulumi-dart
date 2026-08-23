// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties that define the scope private link mode settings exclusion item. This setting applies to a specific private endpoint connection and overrides the default settings for that private endpoint connection.
class AccessModeSettingsExclusionResponse {
  /// Specifies the access mode of ingestion through the specified private endpoint connection in the exclusion.
  final pulumi.Input<String>? ingestionAccessMode;
  /// The private endpoint connection name associated to the private endpoint on which we want to apply the specific access mode settings.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Specifies the access mode of queries through the specified private endpoint connection in the exclusion.
  final pulumi.Input<String>? queryAccessMode;

  /// Creates a new [AccessModeSettingsExclusionResponse].
  /// [ingestionAccessMode] Specifies the access mode of ingestion through the specified private endpoint connection in the exclusion.
  /// [privateEndpointConnectionName] The private endpoint connection name associated to the private endpoint on which we want to apply the specific access mode settings.
  /// [queryAccessMode] Specifies the access mode of queries through the specified private endpoint connection in the exclusion.
  const AccessModeSettingsExclusionResponse({
    this.ingestionAccessMode,
    this.privateEndpointConnectionName,
    this.queryAccessMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionAccessMode': ?ingestionAccessMode,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'queryAccessMode': ?queryAccessMode,
    };
  }

  factory AccessModeSettingsExclusionResponse.fromMap(Map<String, dynamic> map) {
    return AccessModeSettingsExclusionResponse(
      ingestionAccessMode: (() { final guardedValue = map['ingestionAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryAccessMode: (() { final guardedValue = map['queryAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
