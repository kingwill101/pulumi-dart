// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_reply_response.dart';

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily select/click a predefined response or perform an action (like opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse {
  /// Predefined client side actions that user can choose
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse action;
  /// Predefined replies for user to select instead of typing
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse reply;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse].
  /// [action] Predefined client side actions that user can choose
  /// [reply] Predefined replies for user to select instead of typing
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse({
    required this.action,
    required this.reply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'reply': reply.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse(
      action: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      reply: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse.fromMap((map['reply'] as Map).cast<String, dynamic>()),
    );
  }
}

