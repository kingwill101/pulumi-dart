// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_prompt_specification_message_group_message_custom_payload/v2models_intent_confirmation_setting_prompt_specification_message_group_message_custom_payload.dart';
import '../v2models_intent_confirmation_setting_prompt_specification_message_group_message_image_response_card/v2models_intent_confirmation_setting_prompt_specification_message_group_message_image_response_card.dart';
import '../v2models_intent_confirmation_setting_prompt_specification_message_group_message_plain_text_message/v2models_intent_confirmation_setting_prompt_specification_message_group_message_plain_text_message.dart';
import '../v2models_intent_confirmation_setting_prompt_specification_message_group_message_ssml_message/v2models_intent_confirmation_setting_prompt_specification_message_group_message_ssml_message.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See `custom_payload`.
  final V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See `image_response_card`.
  final V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See `plain_text_message`.
  final V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See `ssml_message`.
  final V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage?
      ssmlMessage;

  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage({
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

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
