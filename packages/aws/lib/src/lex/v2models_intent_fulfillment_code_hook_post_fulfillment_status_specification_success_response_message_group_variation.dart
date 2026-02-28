// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response_message_group_variation_custom_payload.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response_message_group_variation_image_response_card.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response_message_group_variation_plain_text_message.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response_message_group_variation_ssml_message.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationPlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPayloadValue = customPayload;
    if (customPayloadValue != null) {
      map['customPayload'] = customPayloadValue.toMap();
    }
    final imageResponseCardValue = imageResponseCard;
    if (imageResponseCardValue != null) {
      map['imageResponseCard'] = imageResponseCardValue.toMap();
    }
    final plainTextMessageValue = plainTextMessage;
    if (plainTextMessageValue != null) {
      map['plainTextMessage'] = plainTextMessageValue.toMap();
    }
    final ssmlMessageValue = ssmlMessage;
    if (ssmlMessageValue != null) {
      map['ssmlMessage'] = ssmlMessageValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationPlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
