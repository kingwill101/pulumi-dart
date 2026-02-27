// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_intent_confirmation_setting_prompt_specification_message_group/v2models_intent_confirmation_setting_prompt_specification_message_group.dart';
import '../v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification/v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecification {
  /// Whether the user can interrupt a speech prompt from the bot.
  final bool? allowInterrupt;

  /// Maximum number of times the bot tries to elicit a response from the user using this prompt.
  final int maxRetries;

  /// Configuration block for messages that Amazon Lex can send to the user. Amazon Lex chooses the actual message to send at runtime. See `message_group`.
  final List<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup>?
      messageGroups;

  /// How a message is selected from a message group among retries. Valid values are `Random` and `Ordered`.
  final String? messageSelectionStrategy;

  /// Configuration block for advanced settings on each attempt of the prompt. See `prompt_attempts_specification`.
  final List<
          V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification>?
      promptAttemptsSpecifications;

  V2modelsIntentConfirmationSettingPromptSpecification({
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
          V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    final messageSelectionStrategyValue = messageSelectionStrategy;
    if (messageSelectionStrategyValue != null) {
      map['messageSelectionStrategy'] = messageSelectionStrategyValue;
    }
    final promptAttemptsSpecificationsValue = promptAttemptsSpecifications;
    if (promptAttemptsSpecificationsValue != null) {
      map['promptAttemptsSpecifications'] = pulumi.Input.encodeList<
              V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification,
              Map<String, dynamic>>(
          promptAttemptsSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingPromptSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecification(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      maxRetries: map['maxRetries'] as int,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
      messageSelectionStrategy: map['messageSelectionStrategy'] == null
          ? null
          : map['messageSelectionStrategy'] as String,
      promptAttemptsSpecifications: map['promptAttemptsSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification>(
              map['promptAttemptsSpecifications'],
              (value) =>
                  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
