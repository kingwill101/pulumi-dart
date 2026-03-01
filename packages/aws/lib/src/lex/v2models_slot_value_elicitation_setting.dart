// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_default_value_specification.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification.dart';
import 'v2models_slot_value_elicitation_setting_sample_utterance.dart';
import 'v2models_slot_value_elicitation_setting_slot_resolution_setting.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification.dart';

class V2modelsSlotValueElicitationSetting {
  /// List of default values for a slot.
  /// See the `default_value_specification` argument reference below.
  final List<V2modelsSlotValueElicitationSettingDefaultValueSpecification>? defaultValueSpecifications;
  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `prompt_specification` argument reference - they are identical.
  final V2modelsSlotValueElicitationSettingPromptSpecification? promptSpecification;
  final List<V2modelsSlotValueElicitationSettingSampleUtterance>? sampleUtterances;
  /// Whether the slot is required or optional. Valid values are `Required` or `Optional`.
  final String slotConstraint;
  /// Information about whether assisted slot resolution is turned on for the slot or not.
  /// See the `slot_resolution_setting` argument reference below.
  final List<V2modelsSlotValueElicitationSettingSlotResolutionSetting>? slotResolutionSettings;
  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the `wait_and_continue_specification` argument reference below.
  final List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>? waitAndContinueSpecifications;

  /// Creates a new [V2modelsSlotValueElicitationSetting].
  /// [defaultValueSpecifications] List of default values for a slot.
  /// [promptSpecification] Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// [sampleUtterances] Optional.
  /// [slotConstraint] Whether the slot is required or optional. Valid values are `Required` or `Optional`.
  /// [slotResolutionSettings] Information about whether assisted slot resolution is turned on for the slot or not.
  /// [waitAndContinueSpecifications] Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  V2modelsSlotValueElicitationSetting({
    this.defaultValueSpecifications,
    this.promptSpecification,
    this.sampleUtterances,
    required this.slotConstraint,
    this.slotResolutionSettings,
    this.waitAndContinueSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValueSpecifications': ?defaultValueSpecifications == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecification, Map<String, dynamic>>(defaultValueSpecifications!, (value) => value.toMap()),
      'promptSpecification': ?promptSpecification == null ? null : promptSpecification!.toMap(),
      'sampleUtterances': ?sampleUtterances == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingSampleUtterance, Map<String, dynamic>>(sampleUtterances!, (value) => value.toMap()),
      'slotConstraint': slotConstraint,
      'slotResolutionSettings': ?slotResolutionSettings == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingSlotResolutionSetting, Map<String, dynamic>>(slotResolutionSettings!, (value) => value.toMap()),
      'waitAndContinueSpecifications': ?waitAndContinueSpecifications == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification, Map<String, dynamic>>(waitAndContinueSpecifications!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSetting(
      defaultValueSpecifications: map['defaultValueSpecifications'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecification>(map['defaultValueSpecifications'], (value) => V2modelsSlotValueElicitationSettingDefaultValueSpecification.fromMap((value as Map).cast<String, dynamic>())),
      promptSpecification: map['promptSpecification'] == null ? null : V2modelsSlotValueElicitationSettingPromptSpecification.fromMap((map['promptSpecification'] as Map).cast<String, dynamic>()),
      sampleUtterances: map['sampleUtterances'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingSampleUtterance>(map['sampleUtterances'], (value) => V2modelsSlotValueElicitationSettingSampleUtterance.fromMap((value as Map).cast<String, dynamic>())),
      slotConstraint: map['slotConstraint'] as String,
      slotResolutionSettings: map['slotResolutionSettings'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingSlotResolutionSetting>(map['slotResolutionSettings'], (value) => V2modelsSlotValueElicitationSettingSlotResolutionSetting.fromMap((value as Map).cast<String, dynamic>())),
      waitAndContinueSpecifications: map['waitAndContinueSpecifications'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>(map['waitAndContinueSpecifications'], (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

