// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_conversation_context_response.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1alphaTextInputResponse {
  /// Conversation context of the input.
  final GoogleCloudDiscoveryengineV1alphaConversationContextResponse context;

  /// Text input.
  final String input;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaTextInputResponse].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1alphaTextInputResponse({
    required this.context,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'context': context.toMap(), 'input': input};
  }

  factory GoogleCloudDiscoveryengineV1alphaTextInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1alphaTextInputResponse(
      context:
          GoogleCloudDiscoveryengineV1alphaConversationContextResponse.fromMap(
            (map['context'] as Map).cast<String, dynamic>(),
          ),
      input: map['input'] as String,
    );
  }
}
