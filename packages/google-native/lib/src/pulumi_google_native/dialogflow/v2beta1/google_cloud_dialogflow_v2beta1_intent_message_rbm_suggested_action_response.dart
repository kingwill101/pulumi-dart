// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_dial_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_open_uri_response.dart';

/// Rich Business Messaging (RBM) suggested client-side action that the user can choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse {
  /// Suggested client side action: Dial a phone number
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse
      dial;

  /// Suggested client side action: Open a URI on device
  final GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse
      openUrl;

  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested action. This data will be also forwarded to webhook to allow performing custom business logic.
  final String postbackData;

  /// Suggested client side action: Share user location
  final Map<String, dynamic> shareLocation;

  /// Text to display alongside the action.
  final String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse({
    required this.dial,
    required this.openUrl,
    required this.postbackData,
    required this.shareLocation,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dial'] = dial.toMap();
    map['openUrl'] = openUrl.toMap();
    map['postbackData'] = postbackData;
    map['shareLocation'] = shareLocation;
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse(
      dial:
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse
              .fromMap((map['dial'] as Map).cast<String, dynamic>()),
      openUrl:
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse
              .fromMap((map['openUrl'] as Map).cast<String, dynamic>()),
      postbackData: map['postbackData'] as String,
      shareLocation: (map['shareLocation'] as Map).cast<String, dynamic>(),
      text: map['text'] as String,
    );
  }
}
