// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Open AI Integration details.
class OpenAIIntegrationProperties {
  /// Value of API key for Open AI resource
  final pulumi.Input<String>? key;
  /// The API endpoint for Open AI resource
  final pulumi.Input<String>? openAIResourceEndpoint;
  /// The resource name of Open AI resource
  final pulumi.Input<String>? openAIResourceId;

  /// Creates a new [OpenAIIntegrationProperties].
  /// [key] Value of API key for Open AI resource
  /// [openAIResourceEndpoint] The API endpoint for Open AI resource
  /// [openAIResourceId] The resource name of Open AI resource
  OpenAIIntegrationProperties({
    this.key,
    this.openAIResourceEndpoint,
    this.openAIResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'openAIResourceEndpoint': ?openAIResourceEndpoint,
      'openAIResourceId': ?openAIResourceId,
    };
  }

  factory OpenAIIntegrationProperties.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationProperties(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openAIResourceEndpoint: (() { final guardedValue = map['openAIResourceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openAIResourceId: (() { final guardedValue = map['openAIResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

