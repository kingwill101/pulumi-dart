// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_reply.dart';

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily select/click a predefined response or perform an action (like opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion {
  /// Predefined client side actions that user can choose
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction? action;
  /// Predefined replies for user to select instead of typing
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply? reply;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion].
  /// [action] Predefined client side actions that user can choose
  /// [reply] Predefined replies for user to select instead of typing
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion({
    this.action,
    this.reply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'reply': ?reply == null ? null : reply!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      action: map['action'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      reply: map['reply'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromMap((map['reply'] as Map).cast<String, dynamic>()),
    );
  }
}

