// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1beta_reply.dart';
import 'google_cloud_discoveryengine_v1beta_text_input.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1betaConversationMessage {
  /// Search reply.
  final GoogleCloudDiscoveryengineV1betaReply? reply;
  /// User text input.
  final GoogleCloudDiscoveryengineV1betaTextInput? userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaConversationMessage].
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1betaConversationMessage({
    this.reply,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reply': ?reply == null ? null : reply!.toMap(),
      'userInput': ?userInput == null ? null : userInput!.toMap(),
    };
  }

  factory GoogleCloudDiscoveryengineV1betaConversationMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationMessage(
      reply: map['reply'] == null ? null : GoogleCloudDiscoveryengineV1betaReply.fromMap((map['reply'] as Map).cast<String, dynamic>()),
      userInput: map['userInput'] == null ? null : GoogleCloudDiscoveryengineV1betaTextInput.fromMap((map['userInput'] as Map).cast<String, dynamic>()),
    );
  }
}

