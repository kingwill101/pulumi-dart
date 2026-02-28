// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1beta_conversation_context.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1betaTextInput {
  /// Conversation context of the input.
  final GoogleCloudDiscoveryengineV1betaConversationContext? context;
  /// Text input.
  final String? input;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaTextInput].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1betaTextInput({
    this.context,
    this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context == null ? null : context!.toMap(),
      'input': ?input,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaTextInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaTextInput(
      context: map['context'] == null ? null : GoogleCloudDiscoveryengineV1betaConversationContext.fromMap((map['context'] as Map).cast<String, dynamic>()),
      input: map['input'] == null ? null : map['input'] as String,
    );
  }
}

