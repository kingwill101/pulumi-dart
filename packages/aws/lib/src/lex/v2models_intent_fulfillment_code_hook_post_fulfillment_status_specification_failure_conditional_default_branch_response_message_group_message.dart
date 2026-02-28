// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_response_message_group_message_custom_payload.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_response_message_group_message_image_response_card.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_response_message_group_message_plain_text_message.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_response_message_group_message_ssml_message.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage].
  /// [customPayload] Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  /// [imageResponseCard] Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  /// [plainTextMessage] Configuration block for a message in plain text format. See `plain_text_message`.
  /// [ssmlMessage] Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage({
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

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
