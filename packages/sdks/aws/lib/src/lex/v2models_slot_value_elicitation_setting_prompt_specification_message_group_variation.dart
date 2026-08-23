// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_custom_payload.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_image_response_card.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_plain_text_message.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group_variation_ssml_message.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation {
  final pulumi.Input<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload>? customPayload;
  final pulumi.Input<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard>? imageResponseCard;
  final pulumi.Input<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage>? plainTextMessage;
  final pulumi.Input<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage>? ssmlMessage;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation].
  /// [customPayload] Optional.
  /// [imageResponseCard] Optional.
  /// [plainTextMessage] Optional.
  /// [ssmlMessage] Optional.
  const V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPayload': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload, Map<String, dynamic>>(customPayload, (value) => value.toMap()),
      'imageResponseCard': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard, Map<String, dynamic>>(imageResponseCard, (value) => value.toMap()),
      'plainTextMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage, Map<String, dynamic>>(plainTextMessage, (value) => value.toMap()),
      'ssmlMessage': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage, Map<String, dynamic>>(ssmlMessage, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation(
      customPayload: (() { final guardedValue = map['customPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageResponseCard: (() { final guardedValue = map['imageResponseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plainTextMessage: (() { final guardedValue = map['plainTextMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmlMessage: (() { final guardedValue = map['ssmlMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
