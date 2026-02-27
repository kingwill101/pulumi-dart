// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../intent_conclusion_statement_message/intent_conclusion_statement_message.dart';

class IntentConclusionStatement {
  final List<IntentConclusionStatementMessage> messages;
  final String? responseCard;

  IntentConclusionStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messages'] = pulumi.Input.encodeList<IntentConclusionStatementMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory IntentConclusionStatement.fromMap(Map<String, dynamic> map) {
    return IntentConclusionStatement(
      messages: pulumi.Input.decodeList<IntentConclusionStatementMessage>(
          map['messages'],
          (value) => IntentConclusionStatementMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
