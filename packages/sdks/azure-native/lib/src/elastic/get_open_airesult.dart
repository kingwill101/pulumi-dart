// ignore_for_file: unused_element, unnecessary_cast

import 'open_aiintegration_properties_response.dart';

/// Result data returned by getOpenAI.
class GetOpenAIResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the integration.
  final String id;
  /// Name of the integration.
  final String name;
  /// Open AI Integration details.
  final OpenAIIntegrationPropertiesResponse properties;
  /// The type of the integration.
  final String type;

  /// Creates a new [GetOpenAIResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the integration.
  /// [name] Name of the integration.
  /// [properties] Open AI Integration details.
  /// [type] The type of the integration.
  const GetOpenAIResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetOpenAIResult.fromMap(Map<String, dynamic> map) {
    return GetOpenAIResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: OpenAIIntegrationPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

