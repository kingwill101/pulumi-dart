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
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingDefaultValueSpecification>>? defaultValueSpecifications;
  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `prompt_specification` argument reference - they are identical.
  final pulumi.Input<V2modelsSlotValueElicitationSettingPromptSpecification>? promptSpecification;
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingSampleUtterance>>? sampleUtterances;
  /// Whether the slot is required or optional. Valid values are `Required` or `Optional`.
  final pulumi.Input<String> slotConstraint;
  /// Information about whether assisted slot resolution is turned on for the slot or not.
  /// See the `slot_resolution_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingSlotResolutionSetting>>? slotResolutionSettings;
  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the `wait_and_continue_specification` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>>? waitAndContinueSpecifications;

  /// Creates a new [V2modelsSlotValueElicitationSetting].
  /// [defaultValueSpecifications] List of default values for a slot.
  /// [promptSpecification] Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// [sampleUtterances] Optional.
  /// [slotConstraint] Whether the slot is required or optional. Valid values are `Required` or `Optional`.
  /// [slotResolutionSettings] Information about whether assisted slot resolution is turned on for the slot or not.
  /// [waitAndContinueSpecifications] Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  const V2modelsSlotValueElicitationSetting({
    this.defaultValueSpecifications,
    this.promptSpecification,
    this.sampleUtterances,
    required this.slotConstraint,
    this.slotResolutionSettings,
    this.waitAndContinueSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValueSpecifications': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingDefaultValueSpecification>, List<Map<String, dynamic>>>(defaultValueSpecifications, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'promptSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingPromptSpecification, Map<String, dynamic>>(promptSpecification, (value) => value.toMap()),
      'sampleUtterances': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingSampleUtterance>, List<Map<String, dynamic>>>(sampleUtterances, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingSampleUtterance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slotConstraint': slotConstraint,
      'slotResolutionSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingSlotResolutionSetting>, List<Map<String, dynamic>>>(slotResolutionSettings, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingSlotResolutionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitAndContinueSpecifications': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>, List<Map<String, dynamic>>>(waitAndContinueSpecifications, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotValueElicitationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSetting(
      defaultValueSpecifications: (() { final guardedValue = map['defaultValueSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecification>(guardedValue, (value) => V2modelsSlotValueElicitationSettingDefaultValueSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      promptSpecification: (() { final guardedValue = map['promptSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSettingPromptSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sampleUtterances: (() { final guardedValue = map['sampleUtterances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingSampleUtterance>(guardedValue, (value) => V2modelsSlotValueElicitationSettingSampleUtterance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slotConstraint: pulumi.Input.fromValue(map['slotConstraint'] as String),
      slotResolutionSettings: (() { final guardedValue = map['slotResolutionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingSlotResolutionSetting>(guardedValue, (value) => V2modelsSlotValueElicitationSettingSlotResolutionSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitAndContinueSpecifications: (() { final guardedValue = map['waitAndContinueSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecification>(guardedValue, (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

