// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_card_button_response.dart';

/// The card response message.
class GoogleCloudDialogflowV2beta1IntentMessageCardResponse {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse>
      buttons;

  /// Optional. The public URI to an image file for the card.
  final String imageUri;

  /// Optional. The subtitle of the card.
  final String subtitle;

  /// Optional. The title of the card.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageCardResponse({
    required this.buttons,
    required this.imageUri,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buttons'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse,
        Map<String, dynamic>>(buttons, (value) => value.toMap());
    map['imageUri'] = imageUri;
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCardResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCardResponse(
      buttons: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse>(
          map['buttons'],
          (value) => GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] as String,
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
