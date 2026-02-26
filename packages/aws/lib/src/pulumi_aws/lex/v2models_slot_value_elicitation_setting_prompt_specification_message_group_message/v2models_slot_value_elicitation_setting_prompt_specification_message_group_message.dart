// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_custom_payload/v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_custom_payload.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_image_response_card/v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_image_response_card.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_plain_text_message/v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_plain_text_message.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_ssml_message/v2models_slot_value_elicitation_setting_prompt_specification_message_group_message_ssml_message.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage {
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload?
      customPayload;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard?
      imageResponseCard;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage?
      plainTextMessage;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage?
      ssmlMessage;

  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage({
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

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
