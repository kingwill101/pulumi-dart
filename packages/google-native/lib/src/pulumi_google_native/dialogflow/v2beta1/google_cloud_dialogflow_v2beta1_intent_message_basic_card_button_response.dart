// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_open_uri_action_response.dart';

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse {
  /// Action to take when a user taps on the button.
  final GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse
      openUriAction;

  /// The title of the button.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse({
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['openUriAction'] = openUriAction.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse(
      openUriAction:
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse
              .fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
