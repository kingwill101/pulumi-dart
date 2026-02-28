// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_conversation_context.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1alphaTextInput {
  /// Conversation context of the input.
  final GoogleCloudDiscoveryengineV1alphaConversationContext? context;

  /// Text input.
  final String? input;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaTextInput].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1alphaTextInput({
    this.context,
    this.input,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue.toMap();
    }
    final inputValue = input;
    if (inputValue != null) {
      map['input'] = inputValue;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaTextInput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaTextInput(
      context: map['context'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaConversationContext.fromMap(
              (map['context'] as Map).cast<String, dynamic>()),
      input: map['input'] == null ? null : map['input'] as String,
    );
  }
}
