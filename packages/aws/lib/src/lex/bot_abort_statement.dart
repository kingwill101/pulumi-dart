// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_abort_statement_message.dart';

class BotAbortStatement {
  final List<BotAbortStatementMessage> messages;
  final String? responseCard;

  /// Creates a new [BotAbortStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  BotAbortStatement({required this.messages, this.responseCard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages':
          pulumi.Input.encodeList<
            BotAbortStatementMessage,
            Map<String, dynamic>
          >(messages, (value) => value.toMap()),
      'responseCard': ?responseCard,
    };
  }

  factory BotAbortStatement.fromMap(Map<String, dynamic> map) {
    return BotAbortStatement(
      messages: pulumi.Input.decodeList<BotAbortStatementMessage>(
        map['messages'],
        (value) => BotAbortStatementMessage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      responseCard: map['responseCard'] == null
          ? null
          : map['responseCard'] as String,
    );
  }
}
