// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_dial.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_open_uri.dart';

/// Rich Business Messaging (RBM) suggested client-side action that the user can choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction {
  /// Suggested client side action: Dial a phone number
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial?
      dial;

  /// Suggested client side action: Open a URI on device
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri?
      openUrl;

  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested action. This data will be also forwarded to webhook to allow performing custom business logic.
  final String? postbackData;

  /// Suggested client side action: Share user location
  final Map<String, dynamic>? shareLocation;

  /// Text to display alongside the action.
  final String? text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction({
    this.dial,
    this.openUrl,
    this.postbackData,
    this.shareLocation,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dialValue = dial;
    if (dialValue != null) {
      map['dial'] = dialValue.toMap();
    }
    final openUrlValue = openUrl;
    if (openUrlValue != null) {
      map['openUrl'] = openUrlValue.toMap();
    }
    final postbackDataValue = postbackData;
    if (postbackDataValue != null) {
      map['postbackData'] = postbackDataValue;
    }
    final shareLocationValue = shareLocation;
    if (shareLocationValue != null) {
      map['shareLocation'] = shareLocationValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(
      dial: map['dial'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
              .fromMap((map['dial'] as Map).cast<String, dynamic>()),
      openUrl: map['openUrl'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
              .fromMap((map['openUrl'] as Map).cast<String, dynamic>()),
      postbackData:
          map['postbackData'] == null ? null : map['postbackData'] as String,
      shareLocation: map['shareLocation'] == null
          ? null
          : (map['shareLocation'] as Map).cast<String, dynamic>(),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
