// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_allowed_input_types.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_text_input_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification {
  final bool? allowInterrupt;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes?
      allowedInputTypes;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification?
      audioAndDtmfInputSpecification;
  final String mapBlockKey;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification?
      textInputSpecification;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification].
  /// [allowInterrupt] Optional.
  /// [allowedInputTypes] Optional.
  /// [audioAndDtmfInputSpecification] Optional.
  /// [mapBlockKey] Required.
  /// [textInputSpecification] Optional.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    required this.mapBlockKey,
    this.textInputSpecification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    final allowedInputTypesValue = allowedInputTypes;
    if (allowedInputTypesValue != null) {
      map['allowedInputTypes'] = allowedInputTypesValue.toMap();
    }
    final audioAndDtmfInputSpecificationValue = audioAndDtmfInputSpecification;
    if (audioAndDtmfInputSpecificationValue != null) {
      map['audioAndDtmfInputSpecification'] =
          audioAndDtmfInputSpecificationValue.toMap();
    }
    map['mapBlockKey'] = mapBlockKey;
    final textInputSpecificationValue = textInputSpecification;
    if (textInputSpecificationValue != null) {
      map['textInputSpecification'] = textInputSpecificationValue.toMap();
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      allowedInputTypes: map['allowedInputTypes'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
              .fromMap(
                  (map['allowedInputTypes'] as Map).cast<String, dynamic>()),
      audioAndDtmfInputSpecification: map['audioAndDtmfInputSpecification'] ==
              null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
              .fromMap((map['audioAndDtmfInputSpecification'] as Map)
                  .cast<String, dynamic>()),
      mapBlockKey: map['mapBlockKey'] as String,
      textInputSpecification: map['textInputSpecification'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
              .fromMap((map['textInputSpecification'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
