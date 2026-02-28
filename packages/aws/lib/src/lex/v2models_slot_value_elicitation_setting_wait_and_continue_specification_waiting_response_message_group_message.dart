// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage {
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload?
      customPayload;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard?
      imageResponseCard;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage?
      plainTextMessage;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage({
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

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
