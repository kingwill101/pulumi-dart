// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse>
      buttons;

  /// Required, unless image is present. The body text of the card.
  final String formattedText;

  /// Optional. The image for the card.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;

  /// Optional. The subtitle of the card.
  final String subtitle;

  /// Optional. The title of the card.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse({
    required this.buttons,
    required this.formattedText,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buttons'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse,
        Map<String, dynamic>>(buttons, (value) => value.toMap());
    map['formattedText'] = formattedText;
    map['image'] = image.toMap();
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse(
      buttons: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse>(
          map['buttons'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      formattedText: map['formattedText'] as String,
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
