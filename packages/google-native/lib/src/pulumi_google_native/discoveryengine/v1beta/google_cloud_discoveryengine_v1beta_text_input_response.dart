// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1beta_conversation_context_response.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1betaTextInputResponse {
  /// Conversation context of the input.
  final GoogleCloudDiscoveryengineV1betaConversationContextResponse context;

  /// Text input.
  final String input;

  GoogleCloudDiscoveryengineV1betaTextInputResponse({
    required this.context,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['context'] = context.toMap();
    map['input'] = input;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaTextInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaTextInputResponse(
      context:
          GoogleCloudDiscoveryengineV1betaConversationContextResponse.fromMap(
              (map['context'] as Map).cast<String, dynamic>()),
      input: map['input'] as String,
    );
  }
}
