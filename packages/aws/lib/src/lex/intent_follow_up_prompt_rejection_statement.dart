// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_follow_up_prompt_rejection_statement_message.dart';

class IntentFollowUpPromptRejectionStatement {
  final List<IntentFollowUpPromptRejectionStatementMessage> messages;
  final String? responseCard;

  /// Creates a new [IntentFollowUpPromptRejectionStatement].
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentFollowUpPromptRejectionStatement({
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages':
          pulumi.Input.encodeList<
            IntentFollowUpPromptRejectionStatementMessage,
            Map<String, dynamic>
          >(messages, (value) => value.toMap()),
      'responseCard': ?responseCard,
    };
  }

  factory IntentFollowUpPromptRejectionStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntentFollowUpPromptRejectionStatement(
      messages:
          pulumi
              .Input.decodeList<IntentFollowUpPromptRejectionStatementMessage>(
            map['messages'],
            (value) => IntentFollowUpPromptRejectionStatementMessage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      responseCard: map['responseCard'] == null
          ? null
          : map['responseCard'] as String,
    );
  }
}
