// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_message_group/v2models_slot_value_elicitation_setting_prompt_specification_message_group.dart';
import '../v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification/v2models_slot_value_elicitation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsSlotValueElicitationSettingPromptSpecification {
  final bool? allowInterrupt;
  final int maxRetries;
  final List<
          V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>?
      messageGroups;
  final String? messageSelectionStrategy;
  final List<
          V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>?
      promptAttemptsSpecifications;

  V2modelsSlotValueElicitationSettingPromptSpecification({
    this.allowInterrupt,
    required this.maxRetries,
    this.messageGroups,
    this.messageSelectionStrategy,
    this.promptAttemptsSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    map['maxRetries'] = maxRetries;
    final messageGroupsValue = messageGroups;
    if (messageGroupsValue != null) {
      map['messageGroups'] = Input.encodeList<
          V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    final messageSelectionStrategyValue = messageSelectionStrategy;
    if (messageSelectionStrategyValue != null) {
      map['messageSelectionStrategy'] = messageSelectionStrategyValue;
    }
    final promptAttemptsSpecificationsValue = promptAttemptsSpecifications;
    if (promptAttemptsSpecificationsValue != null) {
      map['promptAttemptsSpecifications'] = Input.encodeList<
              V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification,
              Map<String, dynamic>>(
          promptAttemptsSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecification(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      maxRetries: map['maxRetries'] as int,
      messageGroups: map['messageGroups'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
      messageSelectionStrategy: map['messageSelectionStrategy'] == null
          ? null
          : map['messageSelectionStrategy'] as String,
      promptAttemptsSpecifications: map['promptAttemptsSpecifications'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>(
              map['promptAttemptsSpecifications'],
              (value) =>
                  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
