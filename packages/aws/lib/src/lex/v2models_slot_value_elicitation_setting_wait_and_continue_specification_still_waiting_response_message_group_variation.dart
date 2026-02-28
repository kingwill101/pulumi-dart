// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation {
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload?
      customPayload;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard?
      imageResponseCard;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage?
      plainTextMessage;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage?
      ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation({
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

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
