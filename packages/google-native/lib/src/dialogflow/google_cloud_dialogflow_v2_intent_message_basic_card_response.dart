// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2IntentMessageBasicCardResponse {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse> buttons;
  /// Required, unless image is present. The body text of the card.
  final String formattedText;
  /// Optional. The image for the card.
  final GoogleCloudDialogflowV2IntentMessageImageResponse image;
  /// Optional. The subtitle of the card.
  final String subtitle;
  /// Optional. The title of the card.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCardResponse].
  /// [buttons] Optional. The collection of card buttons.
  /// [formattedText] Required, unless image is present. The body text of the card.
  /// [image] Optional. The image for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2IntentMessageBasicCardResponse({
    required this.buttons,
    required this.formattedText,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse, Map<String, dynamic>>(buttons, (value) => value.toMap()),
      'formattedText': formattedText,
      'image': image.toMap(),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCardResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCardResponse(
      buttons: pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>(map['buttons'], (value) => GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse.fromMap((value as Map).cast<String, dynamic>())),
      formattedText: map['formattedText'] as String,
      image: GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}

