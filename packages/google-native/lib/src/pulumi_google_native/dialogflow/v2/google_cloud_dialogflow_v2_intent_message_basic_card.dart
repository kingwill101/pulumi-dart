// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;

  /// Required, unless image is present. The body text of the card.
  final String? formattedText;

  /// Optional. The image for the card.
  final GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Optional. The subtitle of the card.
  final String? subtitle;

  /// Optional. The title of the card.
  final String? title;

  GoogleCloudDialogflowV2IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2IntentMessageBasicCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final formattedTextValue = formattedText;
    if (formattedTextValue != null) {
      map['formattedText'] = formattedTextValue;
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
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

  factory GoogleCloudDialogflowV2IntentMessageBasicCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton>(
              map['buttons'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromMap(
                      (value as Map).cast<String, dynamic>())),
      formattedText:
          map['formattedText'] == null ? null : map['formattedText'] as String,
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
