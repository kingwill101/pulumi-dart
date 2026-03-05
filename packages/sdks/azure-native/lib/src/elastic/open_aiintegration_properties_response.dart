// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Open AI Integration details.
class OpenAIIntegrationPropertiesResponse {
  /// Value of API key for Open AI resource
  final pulumi.Input<String>? key;
  /// Last Update Timestamp for key updation
  final pulumi.Input<String> lastRefreshAt;
  /// The API endpoint for Open AI resource
  final pulumi.Input<String>? openAIResourceEndpoint;
  /// The resource name of Open AI resource
  final pulumi.Input<String>? openAIResourceId;

  /// Creates a new [OpenAIIntegrationPropertiesResponse].
  /// [key] Value of API key for Open AI resource
  /// [lastRefreshAt] Last Update Timestamp for key updation
  /// [openAIResourceEndpoint] The API endpoint for Open AI resource
  /// [openAIResourceId] The resource name of Open AI resource
  OpenAIIntegrationPropertiesResponse({
    this.key,
    required this.lastRefreshAt,
    this.openAIResourceEndpoint,
    this.openAIResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'lastRefreshAt': lastRefreshAt,
      'openAIResourceEndpoint': ?openAIResourceEndpoint,
      'openAIResourceId': ?openAIResourceId,
    };
  }

  factory OpenAIIntegrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationPropertiesResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRefreshAt: pulumi.Input.fromValue(map['lastRefreshAt'] as String),
      openAIResourceEndpoint: (() { final guardedValue = map['openAIResourceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openAIResourceId: (() { final guardedValue = map['openAIResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

