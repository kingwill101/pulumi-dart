// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_reply.dart';
import 'google_cloud_discoveryengine_v1alpha_text_input.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1alphaConversationMessage {
  /// Search reply.
  final GoogleCloudDiscoveryengineV1alphaReply? reply;
  /// User text input.
  final GoogleCloudDiscoveryengineV1alphaTextInput? userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationMessage].
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1alphaConversationMessage({
    this.reply,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reply': ?reply == null ? null : reply!.toMap(),
      'userInput': ?userInput == null ? null : userInput!.toMap(),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationMessage(
      reply: map['reply'] == null ? null : GoogleCloudDiscoveryengineV1alphaReply.fromMap((map['reply'] as Map).cast<String, dynamic>()),
      userInput: map['userInput'] == null ? null : GoogleCloudDiscoveryengineV1alphaTextInput.fromMap((map['userInput'] as Map).cast<String, dynamic>()),
    );
  }
}

