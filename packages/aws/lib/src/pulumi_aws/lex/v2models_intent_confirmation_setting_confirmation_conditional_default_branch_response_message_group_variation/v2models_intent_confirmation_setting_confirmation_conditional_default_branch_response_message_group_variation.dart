// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_custom_payload/v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_custom_payload.dart';
import '../v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_image_response_card/v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_image_response_card.dart';
import '../v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_plain_text_message/v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_plain_text_message.dart';
import '../v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_ssml_message/v2models_intent_confirmation_setting_confirmation_conditional_default_branch_response_message_group_variation_ssml_message.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage?
      ssmlMessage;

  V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation({
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

  factory V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
