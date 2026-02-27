// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification {
  final bool? allowInterrupt;
  final int maxRetries;
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup>?
      messageGroups;
  final String? messageSelectionStrategy;
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>?
      promptAttemptsSpecifications;

  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification({
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
      map['messageGroups'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    final messageSelectionStrategyValue = messageSelectionStrategy;
    if (messageSelectionStrategyValue != null) {
      map['messageSelectionStrategy'] = messageSelectionStrategyValue;
    }
    final promptAttemptsSpecificationsValue = promptAttemptsSpecifications;
    if (promptAttemptsSpecificationsValue != null) {
      map['promptAttemptsSpecifications'] = pulumi.Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification,
              Map<String, dynamic>>(
          promptAttemptsSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      maxRetries: map['maxRetries'] as int,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
      messageSelectionStrategy: map['messageSelectionStrategy'] == null
          ? null
          : map['messageSelectionStrategy'] as String,
      promptAttemptsSpecifications: map['promptAttemptsSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>(
              map['promptAttemptsSpecifications'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
