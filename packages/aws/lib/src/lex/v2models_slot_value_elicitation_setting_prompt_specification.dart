// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_prompt_specification_message_group.dart';
import 'v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsSlotValueElicitationSettingPromptSpecification {
  final bool? allowInterrupt;
  final int maxRetries;
  final List<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>? messageGroups;
  final String? messageSelectionStrategy;
  final List<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>? promptAttemptsSpecifications;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecification].
  /// [allowInterrupt] Optional.
  /// [maxRetries] Required.
  /// [messageGroups] Optional.
  /// [messageSelectionStrategy] Optional.
  /// [promptAttemptsSpecifications] Optional.
  V2modelsSlotValueElicitationSettingPromptSpecification({
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
      'messageGroups': ?messageGroups == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup, Map<String, dynamic>>(messageGroups!, (value) => value.toMap()),
      'messageSelectionStrategy': ?messageSelectionStrategy,
      'promptAttemptsSpecifications': ?promptAttemptsSpecifications == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification, Map<String, dynamic>>(promptAttemptsSpecifications!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecification(
      allowInterrupt: map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      maxRetries: map['maxRetries'] as int,
      messageGroups: map['messageGroups'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>(map['messageGroups'], (value) => V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup.fromMap((value as Map).cast<String, dynamic>())),
      messageSelectionStrategy: map['messageSelectionStrategy'] == null ? null : map['messageSelectionStrategy'] as String,
      promptAttemptsSpecifications: map['promptAttemptsSpecifications'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>(map['promptAttemptsSpecifications'], (value) => V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

