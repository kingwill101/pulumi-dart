// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_intent_message_card_button.dart';

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCard {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2IntentMessageCardButton>? buttons;

  /// Optional. The public URI to an image file for the card.
  final String? imageUri;

  /// Optional. The subtitle of the card.
  final String? subtitle;

  /// Optional. The title of the card.
  final String? title;

  GoogleCloudDialogflowV2IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = Input.encodeList<
          GoogleCloudDialogflowV2IntentMessageCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCard(
      buttons: map['buttons'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowV2IntentMessageCardButton>(
              map['buttons'],
              (value) => GoogleCloudDialogflowV2IntentMessageCardButton.fromMap(
                  (value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
