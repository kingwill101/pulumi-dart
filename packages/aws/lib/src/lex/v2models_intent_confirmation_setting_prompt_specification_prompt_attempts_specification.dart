// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_allowed_input_types.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification_text_input_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification {
  /// Whether the user can interrupt a speech prompt attempt from the bot.
  final bool? allowInterrupt;

  /// Configuration block for the allowed input types of the prompt attempt. See `allowed_input_types`.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes?
      allowedInputTypes;

  /// Configuration block for settings on audio and DTMF input. See `audio_and_dtmf_input_specification`.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification?
      audioAndDtmfInputSpecification;

  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;

  /// Configuration block for the settings on text input. See `text_input_specification`.
  final V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification?
      textInputSpecification;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification].
  /// [allowInterrupt] Whether the user can interrupt a speech prompt attempt from the bot.
  /// [allowedInputTypes] Configuration block for the allowed input types of the prompt attempt. See `allowed_input_types`.
  /// [audioAndDtmfInputSpecification] Configuration block for settings on audio and DTMF input. See `audio_and_dtmf_input_specification`.
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [textInputSpecification] Configuration block for the settings on text input. See `text_input_specification`.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification({
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

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      allowedInputTypes: map['allowedInputTypes'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
              .fromMap(
                  (map['allowedInputTypes'] as Map).cast<String, dynamic>()),
      audioAndDtmfInputSpecification: map['audioAndDtmfInputSpecification'] ==
              null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
              .fromMap((map['audioAndDtmfInputSpecification'] as Map)
                  .cast<String, dynamic>()),
      mapBlockKey: map['mapBlockKey'] as String,
      textInputSpecification: map['textInputSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
              .fromMap((map['textInputSpecification'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
