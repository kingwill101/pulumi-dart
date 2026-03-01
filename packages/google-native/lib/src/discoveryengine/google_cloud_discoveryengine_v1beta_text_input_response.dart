// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1beta_conversation_context_response.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1betaTextInputResponse {
  /// Conversation context of the input.
  final GoogleCloudDiscoveryengineV1betaConversationContextResponse context;

  /// Text input.
  final String input;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaTextInputResponse].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1betaTextInputResponse({
    required this.context,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'context': context.toMap(), 'input': input};
  }

  factory GoogleCloudDiscoveryengineV1betaTextInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1betaTextInputResponse(
      context:
          GoogleCloudDiscoveryengineV1betaConversationContextResponse.fromMap(
            (map['context'] as Map).cast<String, dynamic>(),
          ),
      input: map['input'] as String,
    );
  }
}
