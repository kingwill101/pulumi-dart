// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_open_uri_action.dart';

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton {
  /// Action to take when a user taps on the button.
  final GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
      openUriAction;

  /// The title of the button.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton].
  /// [openUriAction] Action to take when a user taps on the button.
  /// [title] The title of the button.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton({
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['openUriAction'] = openUriAction.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      openUriAction:
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
              .fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
