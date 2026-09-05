// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsSlotValueElicitationSettingPromptSpecification {
  final pulumi.Input<bool?>? allowInterrupt;
  final pulumi.Input<int> maxRetries;
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>?>? messageGroups;
  final pulumi.Input<String?>? messageSelectionStrategy;
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>?>? promptAttemptsSpecifications;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecification].
  /// [allowInterrupt] Optional.
  /// [maxRetries] Required.
  /// [messageGroups] Optional.
  /// [messageSelectionStrategy] Optional.
  /// [promptAttemptsSpecifications] Optional.
  const V2modelsSlotValueElicitationSettingPromptSpecification({
    this.allowInterrupt,
    required this.maxRetries,
    this.messageGroups,
    this.messageSelectionStrategy,
    this.promptAttemptsSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'maxRetries': maxRetries,
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messageSelectionStrategy': ?messageSelectionStrategy,
      'promptAttemptsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>, List<Map<String, dynamic>>>(promptAttemptsSpecifications, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecification(
      allowInterrupt: (() { final guardedValue = map['allowInterrupt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetries: pulumi.Input.fromValue((map['maxRetries'] as num).toInt()),
      messageGroups: (() { final guardedValue = map['messageGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>(guardedValue, (value) => V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messageSelectionStrategy: (() { final guardedValue = map['messageSelectionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptAttemptsSpecifications: (() { final guardedValue = map['promptAttemptsSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>(guardedValue, (value) => V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
