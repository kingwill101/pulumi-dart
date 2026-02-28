// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_default_value_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_sample_utterance.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting {
  /// List of default values for a slot.
  /// See the `default_value_specification` argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification>?
      defaultValueSpecifications;

  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `prompt_specification` argument reference - they are identical.
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification?
      promptSpecification;
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance>?
      sampleUtterances;

  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the `wait_and_continue_specification` argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification>?
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
    final map = <String, dynamic>{};
    final defaultValueSpecificationsValue = defaultValueSpecifications;
    if (defaultValueSpecificationsValue != null) {
      map['defaultValueSpecifications'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification,
          Map<String,
              dynamic>>(defaultValueSpecificationsValue, (value) => value.toMap());
    }
    final promptSpecificationValue = promptSpecification;
    if (promptSpecificationValue != null) {
      map['promptSpecification'] = promptSpecificationValue.toMap();
    }
    final sampleUtterancesValue = sampleUtterances;
    if (sampleUtterancesValue != null) {
      map['sampleUtterances'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance,
          Map<String,
              dynamic>>(sampleUtterancesValue, (value) => value.toMap());
    }
    final waitAndContinueSpecificationsValue = waitAndContinueSpecifications;
    if (waitAndContinueSpecificationsValue != null) {
      map['waitAndContinueSpecifications'] = pulumi.Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification,
              Map<String, dynamic>>(
          waitAndContinueSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting(
      defaultValueSpecifications: map['defaultValueSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification>(
              map['defaultValueSpecifications'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      promptSpecification: map['promptSpecification'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification
              .fromMap(
                  (map['promptSpecification'] as Map).cast<String, dynamic>()),
      sampleUtterances: map['sampleUtterances'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance>(
              map['sampleUtterances'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
                      .fromMap((value as Map).cast<String, dynamic>())),
      waitAndContinueSpecifications: map['waitAndContinueSpecifications'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification>(
              map['waitAndContinueSpecifications'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
