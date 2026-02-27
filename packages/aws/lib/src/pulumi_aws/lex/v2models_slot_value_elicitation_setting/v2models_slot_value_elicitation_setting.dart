// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_value_elicitation_setting_default_value_specification/v2models_slot_value_elicitation_setting_default_value_specification.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification/v2models_slot_value_elicitation_setting_prompt_specification.dart';
import '../v2models_slot_value_elicitation_setting_sample_utterance/v2models_slot_value_elicitation_setting_sample_utterance.dart';
import '../v2models_slot_value_elicitation_setting_slot_resolution_setting/v2models_slot_value_elicitation_setting_slot_resolution_setting.dart';
import '../v2models_slot_value_elicitation_setting_wait_and_continue_specification/v2models_slot_value_elicitation_setting_wait_and_continue_specification.dart';

class V2modelsSlotValueElicitationSetting {
  /// List of default values for a slot.
  /// See the `default_value_specification` argument reference below.
  final List<V2modelsSlotValueElicitationSettingDefaultValueSpecification>?
      defaultValueSpecifications;

  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `prompt_specification` argument reference - they are identical.
  final V2modelsSlotValueElicitationSettingPromptSpecification?
      promptSpecification;
  final List<V2modelsSlotValueElicitationSettingSampleUtterance>?
      sampleUtterances;

  /// Whether the slot is required or optional. Valid values are `Required` or `Optional`.
  final String slotConstraint;

  /// Information about whether assisted slot resolution is turned on for the slot or not.
  /// See the `slot_resolution_setting` argument reference below.
  final List<V2modelsSlotValueElicitationSettingSlotResolutionSetting>?
      slotResolutionSettings;

  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the `wait_and_continue_specification` argument reference below.
  final List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>?
      waitAndContinueSpecifications;

  V2modelsSlotValueElicitationSetting({
    this.defaultValueSpecifications,
    this.promptSpecification,
    this.sampleUtterances,
    required this.slotConstraint,
    this.slotResolutionSettings,
    this.waitAndContinueSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueSpecificationsValue = defaultValueSpecifications;
    if (defaultValueSpecificationsValue != null) {
      map['defaultValueSpecifications'] = Input.encodeList<
              V2modelsSlotValueElicitationSettingDefaultValueSpecification,
              Map<String, dynamic>>(
          defaultValueSpecificationsValue, (value) => value.toMap());
    }
    final promptSpecificationValue = promptSpecification;
    if (promptSpecificationValue != null) {
      map['promptSpecification'] = promptSpecificationValue.toMap();
    }
    final sampleUtterancesValue = sampleUtterances;
    if (sampleUtterancesValue != null) {
      map['sampleUtterances'] = Input.encodeList<
              V2modelsSlotValueElicitationSettingSampleUtterance,
              Map<String, dynamic>>(
          sampleUtterancesValue, (value) => value.toMap());
    }
    map['slotConstraint'] = slotConstraint;
    final slotResolutionSettingsValue = slotResolutionSettings;
    if (slotResolutionSettingsValue != null) {
      map['slotResolutionSettings'] = Input.encodeList<
              V2modelsSlotValueElicitationSettingSlotResolutionSetting,
              Map<String, dynamic>>(
          slotResolutionSettingsValue, (value) => value.toMap());
    }
    final waitAndContinueSpecificationsValue = waitAndContinueSpecifications;
    if (waitAndContinueSpecificationsValue != null) {
      map['waitAndContinueSpecifications'] = Input.encodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecification,
              Map<String, dynamic>>(
          waitAndContinueSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotValueElicitationSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSetting(
      defaultValueSpecifications: map['defaultValueSpecifications'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingDefaultValueSpecification>(
              map['defaultValueSpecifications'],
              (value) =>
                  V2modelsSlotValueElicitationSettingDefaultValueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      promptSpecification: map['promptSpecification'] == null
          ? null
          : V2modelsSlotValueElicitationSettingPromptSpecification.fromMap(
              (map['promptSpecification'] as Map).cast<String, dynamic>()),
      sampleUtterances: map['sampleUtterances'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingSampleUtterance>(
              map['sampleUtterances'],
              (value) =>
                  V2modelsSlotValueElicitationSettingSampleUtterance.fromMap(
                      (value as Map).cast<String, dynamic>())),
      slotConstraint: map['slotConstraint'] as String,
      slotResolutionSettings: map['slotResolutionSettings'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingSlotResolutionSetting>(
              map['slotResolutionSettings'],
              (value) =>
                  V2modelsSlotValueElicitationSettingSlotResolutionSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      waitAndContinueSpecifications: map['waitAndContinueSpecifications'] ==
              null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>(
              map['waitAndContinueSpecifications'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
