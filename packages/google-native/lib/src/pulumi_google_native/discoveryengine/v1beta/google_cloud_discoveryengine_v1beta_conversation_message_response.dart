// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1beta_reply_response.dart';
import 'google_cloud_discoveryengine_v1beta_text_input_response.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1betaConversationMessageResponse {
  /// Message creation timestamp.
  final String createTime;

  /// Search reply.
  final GoogleCloudDiscoveryengineV1betaReplyResponse reply;

  /// User text input.
  final GoogleCloudDiscoveryengineV1betaTextInputResponse userInput;

  GoogleCloudDiscoveryengineV1betaConversationMessageResponse({
    required this.createTime,
    required this.reply,
    required this.userInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['reply'] = reply.toMap();
    map['userInput'] = userInput.toMap();
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationMessageResponse(
      createTime: map['createTime'] as String,
      reply: GoogleCloudDiscoveryengineV1betaReplyResponse.fromMap(
          (map['reply'] as Map).cast<String, dynamic>()),
      userInput: GoogleCloudDiscoveryengineV1betaTextInputResponse.fromMap(
          (map['userInput'] as Map).cast<String, dynamic>()),
    );
  }
}
