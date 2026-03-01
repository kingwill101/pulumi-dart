// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation {
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload?
  customPayload;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard?
  imageResponseCard;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage?
  plainTextMessage;
  final V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage?
  ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?customPayload == null ? null : customPayload!.toMap(),
      'imageResponseCard': ?imageResponseCard == null
          ? null
          : imageResponseCard!.toMap(),
      'plainTextMessage': ?plainTextMessage == null
          ? null
          : plainTextMessage!.toMap(),
      'ssmlMessage': ?ssmlMessage == null ? null : ssmlMessage!.toMap(),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload.fromMap(
              (map['customPayload'] as Map).cast<String, dynamic>(),
            ),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard.fromMap(
              (map['imageResponseCard'] as Map).cast<String, dynamic>(),
            ),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage.fromMap(
              (map['plainTextMessage'] as Map).cast<String, dynamic>(),
            ),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage.fromMap(
              (map['ssmlMessage'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
