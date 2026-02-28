// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification.dart';

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  final V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification?
      audioSpecification;
  final V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification?
      dtmfSpecification;
  final int startTimeoutMs;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification].
  /// [audioSpecification] Optional.
  /// [dtmfSpecification] Optional.
  /// [startTimeoutMs] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
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

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification(
      audioSpecification: map['audioSpecification'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
              .fromMap(
                  (map['audioSpecification'] as Map).cast<String, dynamic>()),
      dtmfSpecification: map['dtmfSpecification'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
              .fromMap(
                  (map['dtmfSpecification'] as Map).cast<String, dynamic>()),
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}
