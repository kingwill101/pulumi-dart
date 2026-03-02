// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_conclusion_statement_message.dart';

class IntentConclusionStatement {
  final pulumi.Input<List<IntentConclusionStatementMessage>> messages;
  final pulumi.Input<String>? responseCard;

  /// Creates a new [IntentConclusionStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentConclusionStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': pulumi.Input.mapInputValue<List<IntentConclusionStatementMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<IntentConclusionStatementMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCard': ?responseCard,
    };
  }

  factory IntentConclusionStatement.fromMap(Map<String, dynamic> map) {
    return IntentConclusionStatement(
      messages: (pulumi.Input.decodeList<IntentConclusionStatementMessage>(map['messages'], (value) => IntentConclusionStatementMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseCard: map['responseCard'] == null ? null : (map['responseCard'] as String).input(),
    );
  }
}

