// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_prompt_specification_message_group.dart';
import 'v2models_intent_confirmation_setting_prompt_specification_prompt_attempts_specification.dart';

class V2modelsIntentConfirmationSettingPromptSpecification {
  /// Whether the user can interrupt a speech prompt from the bot.
  final pulumi.Input<bool>? allowInterrupt;
  /// Maximum number of times the bot tries to elicit a response from the user using this prompt.
  final pulumi.Input<int> maxRetries;
  /// Configuration block for messages that Amazon Lex can send to the user. Amazon Lex chooses the actual message to send at runtime. See `message_group`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup>>? messageGroups;
  /// How a message is selected from a message group among retries. Valid values are `Random` and `Ordered`.
  final pulumi.Input<String>? messageSelectionStrategy;
  /// Configuration block for advanced settings on each attempt of the prompt. See `prompt_attempts_specification`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification>>? promptAttemptsSpecifications;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecification].
  /// [allowInterrupt] Whether the user can interrupt a speech prompt from the bot.
  /// [maxRetries] Maximum number of times the bot tries to elicit a response from the user using this prompt.
  /// [messageGroups] Configuration block for messages that Amazon Lex can send to the user. Amazon Lex chooses the actual message to send at runtime. See `message_group`.
  /// [messageSelectionStrategy] How a message is selected from a message group among retries. Valid values are `Random` and `Ordered`.
  /// [promptAttemptsSpecifications] Configuration block for advanced settings on each attempt of the prompt. See `prompt_attempts_specification`.
  V2modelsIntentConfirmationSettingPromptSpecification({
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
      'messageGroups': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup>, List<Map<String, dynamic>>>(messageGroups, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messageSelectionStrategy': ?messageSelectionStrategy,
      'promptAttemptsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification>, List<Map<String, dynamic>>>(promptAttemptsSpecifications, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecification(
      allowInterrupt: (() { final guardedValue = map['allowInterrupt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      messageGroups: (() { final guardedValue = map['messageGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup>(guardedValue, (value) => V2modelsIntentConfirmationSettingPromptSpecificationMessageGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messageSelectionStrategy: (() { final guardedValue = map['messageSelectionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptAttemptsSpecifications: (() { final guardedValue = map['promptAttemptsSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification>(guardedValue, (value) => V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

