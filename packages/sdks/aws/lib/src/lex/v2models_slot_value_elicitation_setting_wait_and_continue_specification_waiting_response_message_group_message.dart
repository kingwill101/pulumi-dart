// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group_message_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage {
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload?>? customPayload;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard?>? imageResponseCard;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage?>? plainTextMessage;
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage?>? ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  const V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage(
      customPayload: (() { final guardedValue = map['customPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageResponseCard: (() { final guardedValue = map['imageResponseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plainTextMessage: (() { final guardedValue = map['plainTextMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmlMessage: (() { final guardedValue = map['ssmlMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
