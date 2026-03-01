// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_conversation_context_message_entry.dart';

class GeneratorSummarizationContextFewShotExampleConversationContext {
  /// Optional. List of message transcripts in the conversation.
  /// Structure is documented below.
  final List<
    GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry
  >?
  messageEntries;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleConversationContext].
  /// [messageEntries] Optional. List of message transcripts in the conversation.
  GeneratorSummarizationContextFewShotExampleConversationContext({
    this.messageEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageEntries': ?messageEntries == null
          ? null
          : pulumi.Input.encodeList<
              GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry,
              Map<String, dynamic>
            >(messageEntries!, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleConversationContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return GeneratorSummarizationContextFewShotExampleConversationContext(
      messageEntries: map['messageEntries'] == null
          ? null
          : pulumi.Input.decodeList<
              GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry
            >(
              map['messageEntries'],
              (value) =>
                  GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
