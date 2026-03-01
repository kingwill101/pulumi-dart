// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_message_group.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification {
  final bool? allowInterrupt;
  final int maxRetries;
  final List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup>? messageGroups;
  final String? messageSelectionStrategy;
  final List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>? promptAttemptsSpecifications;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification].
  /// [allowInterrupt] Optional.
  /// [maxRetries] Required.
  /// [messageGroups] Optional.
  /// [messageSelectionStrategy] Optional.
  /// [promptAttemptsSpecifications] Optional.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification({
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
      'messageGroups': ?messageGroups == null ? null : pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup, Map<String, dynamic>>(messageGroups!, (value) => value.toMap()),
      'messageSelectionStrategy': ?messageSelectionStrategy,
      'promptAttemptsSpecifications': ?promptAttemptsSpecifications == null ? null : pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification, Map<String, dynamic>>(promptAttemptsSpecifications!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification(
      allowInterrupt: map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      maxRetries: map['maxRetries'] as int,
      messageGroups: map['messageGroups'] == null ? null : pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup>(map['messageGroups'], (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup.fromMap((value as Map).cast<String, dynamic>())),
      messageSelectionStrategy: map['messageSelectionStrategy'] == null ? null : map['messageSelectionStrategy'] as String,
      promptAttemptsSpecifications: map['promptAttemptsSpecifications'] == null ? null : pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification>(map['promptAttemptsSpecifications'], (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

