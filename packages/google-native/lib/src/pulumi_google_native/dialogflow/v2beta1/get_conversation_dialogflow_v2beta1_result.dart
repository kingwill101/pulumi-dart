// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_conversation_phone_number_response.dart';

/// Result data returned by getConversation.
class GetConversationDialogflowV2beta1Result {
  /// The Conversation Profile to be used to configure this Conversation. This field cannot be updated. Format: `projects//locations//conversationProfiles/`.
  final String conversationProfile;

  /// The stage of a conversation. It indicates whether the virtual agent or a human agent is handling the conversation. If the conversation is created with the conversation profile that has Dialogflow config set, defaults to ConversationStage.VIRTUAL_AGENT_STAGE; Otherwise, defaults to ConversationStage.HUMAN_ASSIST_STAGE. If the conversation is created with the conversation profile that has Dialogflow config set but explicitly sets conversation_stage to ConversationStage.HUMAN_ASSIST_STAGE, it skips ConversationStage.VIRTUAL_AGENT_STAGE stage and directly goes to ConversationStage.HUMAN_ASSIST_STAGE.
  final String conversationStage;

  /// The time the conversation was finished.
  final String endTime;

  /// The current state of the Conversation.
  final String lifecycleState;

  /// The unique identifier of this conversation. Format: `projects//locations//conversations/`.
  final String name;

  /// Required if the conversation is to be connected over telephony.
  final GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse phoneNumber;

  /// The time the conversation was started.
  final String startTime;

  GetConversationDialogflowV2beta1Result({
    required this.conversationProfile,
    required this.conversationStage,
    required this.endTime,
    required this.lifecycleState,
    required this.name,
    required this.phoneNumber,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationProfile'] = conversationProfile;
    map['conversationStage'] = conversationStage;
    map['endTime'] = endTime;
    map['lifecycleState'] = lifecycleState;
    map['name'] = name;
    map['phoneNumber'] = phoneNumber.toMap();
    map['startTime'] = startTime;
    return map;
  }

  factory GetConversationDialogflowV2beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetConversationDialogflowV2beta1Result(
      conversationProfile: map['conversationProfile'] as String,
      conversationStage: map['conversationStage'] as String,
      endTime: map['endTime'] as String,
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      phoneNumber:
          GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse.fromMap(
              (map['phoneNumber'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
