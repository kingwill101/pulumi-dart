// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_reply_response.dart';
import 'google_cloud_discoveryengine_v1alpha_text_input_response.dart';

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1alphaConversationMessageResponse {
  /// Message creation timestamp.
  final String createTime;

  /// Search reply.
  final GoogleCloudDiscoveryengineV1alphaReplyResponse reply;

  /// User text input.
  final GoogleCloudDiscoveryengineV1alphaTextInputResponse userInput;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationMessageResponse].
  /// [createTime] Message creation timestamp.
  /// [reply] Search reply.
  /// [userInput] User text input.
  GoogleCloudDiscoveryengineV1alphaConversationMessageResponse({
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

  factory GoogleCloudDiscoveryengineV1alphaConversationMessageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationMessageResponse(
      createTime: map['createTime'] as String,
      reply: GoogleCloudDiscoveryengineV1alphaReplyResponse.fromMap(
          (map['reply'] as Map).cast<String, dynamic>()),
      userInput: GoogleCloudDiscoveryengineV1alphaTextInputResponse.fromMap(
          (map['userInput'] as Map).cast<String, dynamic>()),
    );
  }
}
