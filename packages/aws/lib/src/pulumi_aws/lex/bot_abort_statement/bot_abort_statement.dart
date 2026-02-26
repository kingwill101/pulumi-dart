// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bot_abort_statement_message/bot_abort_statement_message.dart';

class BotAbortStatement {
  final List<BotAbortStatementMessage> messages;
  final String? responseCard;

  BotAbortStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messages'] =
        Input.encodeList<BotAbortStatementMessage, Map<String, dynamic>>(
            messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory BotAbortStatement.fromMap(Map<String, dynamic> map) {
    return BotAbortStatement(
      messages: Input.decodeList<BotAbortStatementMessage>(
          map['messages'],
          (value) => BotAbortStatementMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
