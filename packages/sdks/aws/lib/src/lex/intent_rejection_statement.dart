// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_rejection_statement_message.dart';

class IntentRejectionStatement {
  final pulumi.Input<List<IntentRejectionStatementMessage>> messages;
  final pulumi.Input<String>? responseCard;

  /// Creates a new [IntentRejectionStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentRejectionStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': pulumi.Input.mapInputValue<List<IntentRejectionStatementMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<IntentRejectionStatementMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCard': ?responseCard,
    };
  }

  factory IntentRejectionStatement.fromMap(Map<String, dynamic> map) {
    return IntentRejectionStatement(
      messages: (pulumi.Input.decodeList<IntentRejectionStatementMessage>(map['messages'], (value) => IntentRejectionStatementMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseCard: map['responseCard'] == null ? null : (map['responseCard'] as String).input(),
    );
  }
}

