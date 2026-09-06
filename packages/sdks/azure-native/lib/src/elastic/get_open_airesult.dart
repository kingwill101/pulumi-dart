// ignore_for_file: unused_element, unnecessary_cast

import 'open_aiintegration_properties_response.dart';

/// Result data returned by getOpenAI.
class GetOpenAIResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the integration.
  final String? id;
  /// Name of the integration.
  final String? name;
  /// Open AI Integration details.
  final OpenAIIntegrationPropertiesResponse? properties;
  /// The type of the integration.
  final String? type;

  /// Creates a new [GetOpenAIResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the integration.
  /// [name] Name of the integration.
  /// [properties] Open AI Integration details.
  /// [type] The type of the integration.
  const GetOpenAIResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetOpenAIResult.fromMap(Map<String, dynamic> map) {
    return GetOpenAIResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return OpenAIIntegrationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
