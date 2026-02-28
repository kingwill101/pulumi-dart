// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>? buttons;
  /// Required, unless image is present. The body text of the card.
  final String? formattedText;
  /// Optional. The image for the card.
  final GoogleCloudDialogflowV2beta1IntentMessageImage? image;
  /// Optional. The subtitle of the card.
  final String? subtitle;
  /// Optional. The title of the card.
  final String? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCard].
  /// [buttons] Optional. The collection of card buttons.
  /// [formattedText] Required, unless image is present. The body text of the card.
  /// [image] Optional. The image for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?buttons == null ? null : pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, Map<String, dynamic>>(buttons!, (value) => value.toMap()),
      'formattedText': ?formattedText,
      'image': ?image == null ? null : image!.toMap(),
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCard(
      buttons: map['buttons'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(map['buttons'], (value) => GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromMap((value as Map).cast<String, dynamic>())),
      formattedText: map['formattedText'] == null ? null : map['formattedText'] as String,
      image: map['image'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

