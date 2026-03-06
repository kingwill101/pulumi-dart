// ignore_for_file: unused_element, unnecessary_cast

import 'open_aiintegration_status_response_properties_response.dart';

/// Result data returned by getOpenAIStatus.
class GetOpenAIStatusResult {
  /// Status of the OpenAI Integration
  final OpenAIIntegrationStatusResponsePropertiesResponse properties;

  /// Creates a new [GetOpenAIStatusResult].
  /// [properties] Status of the OpenAI Integration
  const GetOpenAIStatusResult({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
    };
  }

  factory GetOpenAIStatusResult.fromMap(Map<String, dynamic> map) {
    return GetOpenAIStatusResult(
      properties: OpenAIIntegrationStatusResponsePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

