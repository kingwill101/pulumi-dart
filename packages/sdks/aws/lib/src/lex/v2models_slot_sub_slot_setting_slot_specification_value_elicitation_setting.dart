// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_default_value_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_sample_utterance.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting {
  /// List of default values for a slot.
  /// See the `default_value_specification` argument reference below.
  final pulumi.Input<
    List<
      V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
    >
  >?
  defaultValueSpecifications;

  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `prompt_specification` argument reference - they are identical.
  final pulumi.Input<
    V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification
  >?
  promptSpecification;
  final pulumi.Input<
    List<
      V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
    >
  >?
  sampleUtterances;

  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the `wait_and_continue_specification` argument reference below.
  final pulumi.Input<
    List<
      V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
    >
  >?
  waitAndContinueSpecifications;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting].
  /// [defaultValueSpecifications] List of default values for a slot.
  /// [promptSpecification] Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// [sampleUtterances] Optional.
  /// [waitAndContinueSpecifications] Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting({
    this.defaultValueSpecifications,
    this.promptSpecification,
    this.sampleUtterances,
    this.waitAndContinueSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValueSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
            >,
            List<Map<String, dynamic>>
          >(
            defaultValueSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'promptSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification,
            Map<String, dynamic>
          >(promptSpecification, (value) => value.toMap()),
      'sampleUtterances':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
            >,
            List<Map<String, dynamic>>
          >(
            sampleUtterances,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'waitAndContinueSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
            >,
            List<Map<String, dynamic>>
          >(
            waitAndContinueSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting(
      defaultValueSpecifications: (() {
        final guardedValue = map['defaultValueSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
          >(
            guardedValue,
            (value) =>
                V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      promptSpecification: (() {
        final guardedValue = map['promptSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sampleUtterances: (() {
        final guardedValue = map['sampleUtterances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
          >(
            guardedValue,
            (value) =>
                V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      waitAndContinueSpecifications: (() {
        final guardedValue = map['waitAndContinueSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
          >(
            guardedValue,
            (value) =>
                V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
