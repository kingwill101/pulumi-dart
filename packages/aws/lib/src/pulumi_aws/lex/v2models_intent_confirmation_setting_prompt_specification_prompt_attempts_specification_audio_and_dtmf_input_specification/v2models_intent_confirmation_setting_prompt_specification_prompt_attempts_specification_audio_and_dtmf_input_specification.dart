// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification/v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification.dart';
import '../v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification/v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  /// Configuration block for the settings on audio input. See <span pulumi-lang-nodejs="`audioSpecification`" pulumi-lang-dotnet="`AudioSpecification`" pulumi-lang-go="`audioSpecification`" pulumi-lang-python="`audio_specification`" pulumi-lang-yaml="`audioSpecification`" pulumi-lang-java="`audioSpecification`">`audio_specification`</span>.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification?
      audioSpecification;

  /// Configuration block for the settings on DTMF input. See <span pulumi-lang-nodejs="`dtmfSpecification`" pulumi-lang-dotnet="`DtmfSpecification`" pulumi-lang-go="`dtmfSpecification`" pulumi-lang-python="`dtmf_specification`" pulumi-lang-yaml="`dtmfSpecification`" pulumi-lang-java="`dtmfSpecification`">`dtmf_specification`</span>.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification?
      dtmfSpecification;

  /// Time for which a bot waits before assuming that the customer isn't going to speak or press a key. This timeout is shared between Audio and DTMF inputs.
  final int startTimeoutMs;

  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
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

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification(
      audioSpecification: map['audioSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
              .fromMap(
                  (map['audioSpecification'] as Map).cast<String, dynamic>()),
      dtmfSpecification: map['dtmfSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
              .fromMap(
                  (map['dtmfSpecification'] as Map).cast<String, dynamic>()),
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}
