// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_allowed_input_types.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_audio_and_dtmf_input_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification_text_input_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification {
  final pulumi.Input<bool>? allowInterrupt;
  final pulumi.Input<
    V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
  >?
  allowedInputTypes;
  final pulumi.Input<
    V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
  >?
  audioAndDtmfInputSpecification;
  final pulumi.Input<String> mapBlockKey;
  final pulumi.Input<
    V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
  >?
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
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'allowedInputTypes':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes,
            Map<String, dynamic>
          >(allowedInputTypes, (value) => value.toMap()),
      'audioAndDtmfInputSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification,
            Map<String, dynamic>
          >(audioAndDtmfInputSpecification, (value) => value.toMap()),
      'mapBlockKey': mapBlockKey,
      'textInputSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification,
            Map<String, dynamic>
          >(textInputSpecification, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification(
      allowInterrupt: (() {
        final guardedValue = map['allowInterrupt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedInputTypes: (() {
        final guardedValue = map['allowedInputTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      audioAndDtmfInputSpecification: (() {
        final guardedValue = map['audioAndDtmfInputSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      textInputSpecification: (() {
        final guardedValue = map['textInputSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
