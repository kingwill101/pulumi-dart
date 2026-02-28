// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation {
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload?
      customPayload;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard?
      imageResponseCard;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage?
      plainTextMessage;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation({
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

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
