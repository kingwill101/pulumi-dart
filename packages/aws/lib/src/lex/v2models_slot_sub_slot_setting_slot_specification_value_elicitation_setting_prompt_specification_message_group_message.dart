// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group_message_custom_payload.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group_message_image_response_card.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group_message_plain_text_message.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group_message_ssml_message.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage {
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload?
      customPayload;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard?
      imageResponseCard;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage?
      plainTextMessage;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage({
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

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
