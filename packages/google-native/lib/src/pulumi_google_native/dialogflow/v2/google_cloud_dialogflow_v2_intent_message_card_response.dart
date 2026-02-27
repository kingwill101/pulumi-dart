// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_intent_message_card_button_response.dart';

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCardResponse {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2IntentMessageCardButtonResponse> buttons;

  /// Optional. The public URI to an image file for the card.
  final String imageUri;

  /// Optional. The subtitle of the card.
  final String subtitle;

  /// Optional. The title of the card.
  final String title;

  GoogleCloudDialogflowV2IntentMessageCardResponse({
    required this.buttons,
    required this.imageUri,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buttons'] = Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageCardButtonResponse,
        Map<String, dynamic>>(buttons, (value) => value.toMap());
    map['imageUri'] = imageUri;
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageCardResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCardResponse(
      buttons: Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageCardButtonResponse>(
          map['buttons'],
          (value) =>
              GoogleCloudDialogflowV2IntentMessageCardButtonResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] as String,
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
