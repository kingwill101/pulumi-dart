// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification?
      audioSpecification;
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification?
      dtmfSpecification;
  final int startTimeoutMs;

  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    this.audioSpecification,
    this.dtmfSpecification,
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioSpecificationValue = audioSpecification;
    if (audioSpecificationValue != null) {
      map['audioSpecification'] = audioSpecificationValue.toMap();
    }
    final dtmfSpecificationValue = dtmfSpecification;
    if (dtmfSpecificationValue != null) {
      map['dtmfSpecification'] = dtmfSpecificationValue.toMap();
    }
    map['startTimeoutMs'] = startTimeoutMs;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification(
      audioSpecification: map['audioSpecification'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
              .fromMap(
                  (map['audioSpecification'] as Map).cast<String, dynamic>()),
      dtmfSpecification: map['dtmfSpecification'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
              .fromMap(
                  (map['dtmfSpecification'] as Map).cast<String, dynamic>()),
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}
