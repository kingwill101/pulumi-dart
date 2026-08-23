// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_abort_statement_message.dart';

class BotAbortStatement {
  final pulumi.Input<List<BotAbortStatementMessage>> messages;
  final pulumi.Input<String>? responseCard;

  /// Creates a new [BotAbortStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  const BotAbortStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': pulumi.Input.mapInputValue<List<BotAbortStatementMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<BotAbortStatementMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCard': ?responseCard,
    };
  }

  factory BotAbortStatement.fromMap(Map<String, dynamic> map) {
    return BotAbortStatement(
      messages: pulumi.Input.fromValue(pulumi.Input.decodeList<BotAbortStatementMessage>(map['messages']!, (value) => BotAbortStatementMessage.fromMap((value as Map).cast<String, dynamic>()))),
      responseCard: (() { final guardedValue = map['responseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
