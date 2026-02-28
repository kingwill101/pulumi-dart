// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional_default_branch_response_message_group_variation_image_response_card_button.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  /// Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  final List<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton>?
      buttons;

  /// URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  final String? imageUrl;

  /// Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  final String? subtitle;

  /// Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  final String title;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard].
  /// [buttons] Configuration blocks for buttons that should be displayed on the response card. The arrangement of the buttons is determined by the platform that displays the button. See `button`.
  /// [imageUrl] URL of an image to display on the response card. The image URL must be publicly available so that the platform displaying the response card has access to the image.
  /// [subtitle] Subtitle to display on the response card. The format of the subtitle is determined by the platform displaying the response card.
  /// [title] Title to display on the response card. The format of the title is determined by the platform displaying the response card.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.buttons,
    this.imageUrl,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = pulumi.Input.encodeList<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final imageUrlValue = imageUrl;
    if (imageUrlValue != null) {
      map['imageUrl'] = imageUrlValue;
    }
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    map['title'] = title;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton>(
              map['buttons'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
                      .fromMap((value as Map).cast<String, dynamic>())),
      imageUrl: map['imageUrl'] == null ? null : map['imageUrl'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
