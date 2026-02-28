// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_card_button.dart';

/// The card response message.
class GoogleCloudDialogflowV2beta1IntentMessageCard {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2beta1IntentMessageCardButton>? buttons;

  /// Optional. The public URI to an image file for the card.
  final String? imageUri;

  /// Optional. The subtitle of the card.
  final String? subtitle;

  /// Optional. The title of the card.
  final String? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageCard].
  /// [buttons] Optional. The collection of card buttons.
  /// [imageUri] Optional. The public URI to an image file for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2beta1IntentMessageCardButton,
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

  factory GoogleCloudDialogflowV2beta1IntentMessageCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageCardButton>(
              map['buttons'],
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromMap(
                      (value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
