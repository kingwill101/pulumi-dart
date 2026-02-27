// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_discoveryengine_v1beta_conversation_message_response.dart';

/// Result data returned by getConversation.
class GetConversationResult5 {
  /// The time the conversation finished.
  final String endTime;

  /// Conversation messages.
  final List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>
      messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final String name;

  /// The time the conversation started.
  final String startTime;

  /// The state of the Conversation.
  final String state;

  /// A unique identifier for tracking users.
  final String userPseudoId;

  GetConversationResult5({
    required this.endTime,
    required this.messages,
    required this.name,
    required this.startTime,
    required this.state,
    required this.userPseudoId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['messages'] = Input.encodeList<
        GoogleCloudDiscoveryengineV1betaConversationMessageResponse,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    map['name'] = name;
    map['startTime'] = startTime;
    map['state'] = state;
    map['userPseudoId'] = userPseudoId;
    return map;
  }

  factory GetConversationResult5.fromMap(Map<String, dynamic> map) {
    return GetConversationResult5(
      endTime: map['endTime'] as String,
      messages: Input.decodeList<
              GoogleCloudDiscoveryengineV1betaConversationMessageResponse>(
          map['messages'],
          (value) => GoogleCloudDiscoveryengineV1betaConversationMessageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      userPseudoId: map['userPseudoId'] as String,
    );
  }
}
