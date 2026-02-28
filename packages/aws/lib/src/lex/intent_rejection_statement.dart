// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_rejection_statement_message.dart';

class IntentRejectionStatement {
  final List<IntentRejectionStatementMessage> messages;
  final String? responseCard;

  /// Creates a new [IntentRejectionStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentRejectionStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messages'] = pulumi.Input.encodeList<IntentRejectionStatementMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory IntentRejectionStatement.fromMap(Map<String, dynamic> map) {
    return IntentRejectionStatement(
      messages: pulumi.Input.decodeList<IntentRejectionStatementMessage>(
          map['messages'],
          (value) => IntentRejectionStatementMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
