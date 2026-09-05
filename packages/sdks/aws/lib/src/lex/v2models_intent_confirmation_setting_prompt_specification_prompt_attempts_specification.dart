// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_allowed_input_types.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_text_input_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification {
  /// Whether the user can interrupt a speech prompt attempt from the bot.
  final pulumi.Input<bool?>? allowInterrupt;
  /// Configuration block for the allowed input types of the prompt attempt. See `allowedInputTypes`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes?>? allowedInputTypes;
  /// Configuration block for settings on audio and DTMF input. See `audioAndDtmfInputSpecification`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification?>? audioAndDtmfInputSpecification;
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final pulumi.Input<String> mapBlockKey;
  /// Configuration block for the settings on text input. See `textInputSpecification`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification?>? textInputSpecification;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification].
  /// [allowInterrupt] Whether the user can interrupt a speech prompt attempt from the bot.
  /// [allowedInputTypes] Configuration block for the allowed input types of the prompt attempt. See `allowedInputTypes`.
  /// [audioAndDtmfInputSpecification] Configuration block for settings on audio and DTMF input. See `audioAndDtmfInputSpecification`.
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [textInputSpecification] Configuration block for the settings on text input. See `textInputSpecification`.
  const V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    required this.mapBlockKey,
    this.textInputSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'allowedInputTypes': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes, Map<String, dynamic>>(allowedInputTypes, (value) => value.toMap()),
      'audioAndDtmfInputSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification, Map<String, dynamic>>(audioAndDtmfInputSpecification, (value) => value.toMap()),
      'mapBlockKey': mapBlockKey,
      'textInputSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification, Map<String, dynamic>>(textInputSpecification, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification(
      allowInterrupt: (() { final guardedValue = map['allowInterrupt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedInputTypes: (() { final guardedValue = map['allowedInputTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioAndDtmfInputSpecification: (() { final guardedValue = map['audioAndDtmfInputSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      textInputSpecification: (() { final guardedValue = map['textInputSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
