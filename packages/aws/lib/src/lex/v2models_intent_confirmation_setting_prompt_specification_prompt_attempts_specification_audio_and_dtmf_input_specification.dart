// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  /// Configuration block for the settings on audio input. See `audio_specification`.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification?
  audioSpecification;

  /// Configuration block for the settings on DTMF input. See `dtmf_specification`.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification?
  dtmfSpecification;

  /// Time for which a bot waits before assuming that the customer isn't going to speak or press a key. This timeout is shared between Audio and DTMF inputs.
  final int startTimeoutMs;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification].
  /// [audioSpecification] Configuration block for the settings on audio input. See `audio_specification`.
  /// [dtmfSpecification] Configuration block for the settings on DTMF input. See `dtmf_specification`.
  /// [startTimeoutMs] Time for which a bot waits before assuming that the customer isn't going to speak or press a key. This timeout is shared between Audio and DTMF inputs.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    this.audioSpecification,
    this.dtmfSpecification,
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSpecification': ?audioSpecification == null
          ? null
          : audioSpecification!.toMap(),
      'dtmfSpecification': ?dtmfSpecification == null
          ? null
          : dtmfSpecification!.toMap(),
      'startTimeoutMs': startTimeoutMs,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification(
      audioSpecification: map['audioSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification.fromMap(
              (map['audioSpecification'] as Map).cast<String, dynamic>(),
            ),
      dtmfSpecification: map['dtmfSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(
              (map['dtmfSpecification'] as Map).cast<String, dynamic>(),
            ),
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}
