// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_variation_image_response_card_button.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard {
  /// Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  final List<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton>? buttons;
  /// URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  final String? imageUrl;
  /// Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  final String? subtitle;
  /// Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  final String title;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard].
  /// [buttons] Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  /// [imageUrl] URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  /// [subtitle] Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  /// [title] Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?buttons == null ? null : pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton, Map<String, dynamic>>(buttons!, (value) => value.toMap()),
      'imageUrl': ?imageUrl,
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard(
      buttons: map['buttons'] == null ? null : pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton>(map['buttons'], (value) => V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton.fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}

