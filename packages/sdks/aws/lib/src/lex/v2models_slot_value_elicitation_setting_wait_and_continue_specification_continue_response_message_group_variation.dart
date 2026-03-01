// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation {
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload? customPayload;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard? imageResponseCard;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage? plainTextMessage;
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage? ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?customPayload == null ? null : customPayload!.toMap(),
      'imageResponseCard': ?imageResponseCard == null ? null : imageResponseCard!.toMap(),
      'plainTextMessage': ?plainTextMessage == null ? null : plainTextMessage!.toMap(),
      'ssmlMessage': ?ssmlMessage == null ? null : ssmlMessage!.toMap(),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation(
      customPayload: map['customPayload'] == null ? null : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload.fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null ? null : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard.fromMap((map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null ? null : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage.fromMap((map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null ? null : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage.fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}

