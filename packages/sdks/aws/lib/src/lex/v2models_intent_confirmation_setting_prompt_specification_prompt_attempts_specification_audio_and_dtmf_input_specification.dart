// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_audio_specification.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification_dtmf_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  /// Configuration block for the settings on audio input. See `audioSpecification`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification?>? audioSpecification;
  /// Configuration block for the settings on DTMF input. See `dtmfSpecification`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification?>? dtmfSpecification;
  /// Time for which a bot waits before assuming that the customer isn't going to speak or press a key. This timeout is shared between Audio and DTMF inputs.
  final pulumi.Input<int> startTimeoutMs;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification].
  /// [audioSpecification] Configuration block for the settings on audio input. See `audioSpecification`.
  /// [dtmfSpecification] Configuration block for the settings on DTMF input. See `dtmfSpecification`.
  /// [startTimeoutMs] Time for which a bot waits before assuming that the customer isn't going to speak or press a key. This timeout is shared between Audio and DTMF inputs.
  const V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    this.audioSpecification,
    this.dtmfSpecification,
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification, Map<String, dynamic>>(audioSpecification, (value) => value.toMap()),
      'dtmfSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification, Map<String, dynamic>>(dtmfSpecification, (value) => value.toMap()),
      'startTimeoutMs': startTimeoutMs,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification(
      audioSpecification: (() { final guardedValue = map['audioSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dtmfSpecification: (() { final guardedValue = map['dtmfSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTimeoutMs: pulumi.Input.fromValue((map['startTimeoutMs'] as num).toInt()),
    );
  }
}
