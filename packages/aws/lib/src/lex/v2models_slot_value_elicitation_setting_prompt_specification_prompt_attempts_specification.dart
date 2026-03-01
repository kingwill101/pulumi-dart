// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification_allowed_input_types.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification_text_input_specification.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification {
  final bool? allowInterrupt;
  final V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes?
  allowedInputTypes;
  final V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification?
  audioAndDtmfInputSpecification;
  final String mapBlockKey;
  final V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification?
  textInputSpecification;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification].
  /// [allowInterrupt] Optional.
  /// [allowedInputTypes] Optional.
  /// [audioAndDtmfInputSpecification] Optional.
  /// [mapBlockKey] Required.
  /// [textInputSpecification] Optional.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    required this.mapBlockKey,
    this.textInputSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'allowedInputTypes': ?allowedInputTypes == null
          ? null
          : allowedInputTypes!.toMap(),
      'audioAndDtmfInputSpecification': ?audioAndDtmfInputSpecification == null
          ? null
          : audioAndDtmfInputSpecification!.toMap(),
      'mapBlockKey': mapBlockKey,
      'textInputSpecification': ?textInputSpecification == null
          ? null
          : textInputSpecification!.toMap(),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification(
      allowInterrupt: map['allowInterrupt'] == null
          ? null
          : map['allowInterrupt'] as bool,
      allowedInputTypes: map['allowedInputTypes'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(
              (map['allowedInputTypes'] as Map).cast<String, dynamic>(),
            ),
      audioAndDtmfInputSpecification:
          map['audioAndDtmfInputSpecification'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
              (map['audioAndDtmfInputSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      mapBlockKey: map['mapBlockKey'] as String,
      textInputSpecification: map['textInputSpecification'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
              (map['textInputSpecification'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
