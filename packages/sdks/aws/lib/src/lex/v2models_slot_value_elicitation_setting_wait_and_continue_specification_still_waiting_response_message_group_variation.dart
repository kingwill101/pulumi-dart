// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation {
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload?>? customPayload;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard?>? imageResponseCard;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage?>? plainTextMessage;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage?>? ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  const V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation(
      customPayload: (() { final guardedValue = map['customPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageResponseCard: (() { final guardedValue = map['imageResponseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plainTextMessage: (() { final guardedValue = map['plainTextMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmlMessage: (() { final guardedValue = map['ssmlMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
