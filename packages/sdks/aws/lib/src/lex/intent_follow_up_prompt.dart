// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_follow_up_prompt_prompt.dart';
import 'intent_follow_up_prompt_rejection_statement.dart';

class IntentFollowUpPrompt {
  /// Prompts for information from the user. Attributes are documented under prompt.
  final pulumi.Input<IntentFollowUpPromptPrompt> prompt;
  /// If the user answers "no" to the question defined in the prompt field,
  /// Amazon Lex responds with this statement to acknowledge that the intent was canceled. Attributes are
  /// documented below under statement.
  final pulumi.Input<IntentFollowUpPromptRejectionStatement> rejectionStatement;

  /// Creates a new [IntentFollowUpPrompt].
  /// [prompt] Prompts for information from the user. Attributes are documented under prompt.
  /// [rejectionStatement] If the user answers "no" to the question defined in the prompt field,
  IntentFollowUpPrompt({
    required this.prompt,
    required this.rejectionStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prompt': pulumi.Input.mapInputValue<IntentFollowUpPromptPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'rejectionStatement': pulumi.Input.mapInputValue<IntentFollowUpPromptRejectionStatement, Map<String, dynamic>>(rejectionStatement, (value) => value.toMap()),
    };
  }

  factory IntentFollowUpPrompt.fromMap(Map<String, dynamic> map) {
    return IntentFollowUpPrompt(
      prompt: (IntentFollowUpPromptPrompt.fromMap((map['prompt']! as Map).cast<String, dynamic>())).input(),
      rejectionStatement: (IntentFollowUpPromptRejectionStatement.fromMap((map['rejectionStatement']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

