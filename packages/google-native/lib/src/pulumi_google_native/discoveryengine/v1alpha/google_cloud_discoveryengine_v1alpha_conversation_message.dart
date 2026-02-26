// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_reply.dart';
import 'google_cloud_discoveryengine_v1alpha_text_input.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1alphaConversationMessage {
  /// Search reply.
  final GoogleCloudDiscoveryengineV1alphaReply? reply;

  /// User text input.
  final GoogleCloudDiscoveryengineV1alphaTextInput? userInput;

  GoogleCloudDiscoveryengineV1alphaConversationMessage({
    this.reply,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replyValue = reply;
    if (replyValue != null) {
      map['reply'] = replyValue.toMap();
    }
    final userInputValue = userInput;
    if (userInputValue != null) {
      map['userInput'] = userInputValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationMessage.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationMessage(
      reply: map['reply'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaReply.fromMap(
              (map['reply'] as Map).cast<String, dynamic>()),
      userInput: map['userInput'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaTextInput.fromMap(
              (map['userInput'] as Map).cast<String, dynamic>()),
    );
  }
}
