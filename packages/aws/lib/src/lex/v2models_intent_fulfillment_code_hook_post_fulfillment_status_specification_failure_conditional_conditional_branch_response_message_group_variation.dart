// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_conditional_branch_response_message_group_variation_custom_payload.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_conditional_branch_response_message_group_variation_image_response_card.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_conditional_branch_response_message_group_variation_plain_text_message.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_conditional_branch_response_message_group_variation_ssml_message.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation({
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

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
