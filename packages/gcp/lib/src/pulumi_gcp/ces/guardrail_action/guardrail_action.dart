// ignore_for_file: unused_element, unnecessary_cast

import '../guardrail_action_generative_answer/guardrail_action_generative_answer.dart';
import '../guardrail_action_respond_immediately/guardrail_action_respond_immediately.dart';
import '../guardrail_action_transfer_agent/guardrail_action_transfer_agent.dart';

class GuardrailAction {
  /// The agent will immediately respond with a generative answer.
  /// Structure is documented below.
  final GuardrailActionGenerativeAnswer? generativeAnswer;

  /// The agent will immediately respond with a preconfigured response.
  /// Structure is documented below.
  final GuardrailActionRespondImmediately? respondImmediately;

  /// The agent will transfer the conversation to a different agent.
  /// Structure is documented below.
  final GuardrailActionTransferAgent? transferAgent;

  GuardrailAction({
    this.generativeAnswer,
    this.respondImmediately,
    this.transferAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final generativeAnswerValue = generativeAnswer;
    if (generativeAnswerValue != null) {
      map['generativeAnswer'] = generativeAnswerValue.toMap();
    }
    final respondImmediatelyValue = respondImmediately;
    if (respondImmediatelyValue != null) {
      map['respondImmediately'] = respondImmediatelyValue.toMap();
    }
    final transferAgentValue = transferAgent;
    if (transferAgentValue != null) {
      map['transferAgent'] = transferAgentValue.toMap();
    }
    return map;
  }

  factory GuardrailAction.fromMap(Map<String, dynamic> map) {
    return GuardrailAction(
      generativeAnswer: map['generativeAnswer'] == null
          ? null
          : GuardrailActionGenerativeAnswer.fromMap(
              (map['generativeAnswer'] as Map).cast<String, dynamic>()),
      respondImmediately: map['respondImmediately'] == null
          ? null
          : GuardrailActionRespondImmediately.fromMap(
              (map['respondImmediately'] as Map).cast<String, dynamic>()),
      transferAgent: map['transferAgent'] == null
          ? null
          : GuardrailActionTransferAgent.fromMap(
              (map['transferAgent'] as Map).cast<String, dynamic>()),
    );
  }
}
