// ignore_for_file: unused_element, unnecessary_cast

import 'generator_summarization_context_few_shot_example_conversation_context.dart';
import 'generator_summarization_context_few_shot_example_output.dart';
import 'generator_summarization_context_few_shot_example_summarization_section_list.dart';

class GeneratorSummarizationContextFewShotExample {
  /// Optional. Conversation transcripts.
  /// Structure is documented below.
  final GeneratorSummarizationContextFewShotExampleConversationContext? conversationContext;
  /// Optional. Key is the placeholder field name in input, value is the value of the placeholder. E.g. instruction contains "@price", and ingested data has <"price", "10">
  final Map<String, String>? extraInfo;
  /// Required. Example output of the model.
  /// Structure is documented below.
  final GeneratorSummarizationContextFewShotExampleOutput output;
  /// Summarization sections.
  /// Structure is documented below.
  final GeneratorSummarizationContextFewShotExampleSummarizationSectionList? summarizationSectionList;

  /// Creates a new [GeneratorSummarizationContextFewShotExample].
  /// [conversationContext] Optional. Conversation transcripts.
  /// [extraInfo] Optional. Key is the placeholder field name in input, value is the value of the placeholder. E.g. instruction contains "@price", and ingested data has <"price", "10">
  /// [output] Required. Example output of the model.
  /// [summarizationSectionList] Summarization sections.
  GeneratorSummarizationContextFewShotExample({
    this.conversationContext,
    this.extraInfo,
    required this.output,
    this.summarizationSectionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationContext': ?conversationContext == null ? null : conversationContext!.toMap(),
      'extraInfo': ?extraInfo,
      'output': output.toMap(),
      'summarizationSectionList': ?summarizationSectionList == null ? null : summarizationSectionList!.toMap(),
    };
  }

  factory GeneratorSummarizationContextFewShotExample.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExample(
      conversationContext: map['conversationContext'] == null ? null : GeneratorSummarizationContextFewShotExampleConversationContext.fromMap((map['conversationContext'] as Map).cast<String, dynamic>()),
      extraInfo: map['extraInfo'] == null ? null : (map['extraInfo'] as Map).cast<String, String>(),
      output: GeneratorSummarizationContextFewShotExampleOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
      summarizationSectionList: map['summarizationSectionList'] == null ? null : GeneratorSummarizationContextFewShotExampleSummarizationSectionList.fromMap((map['summarizationSectionList'] as Map).cast<String, dynamic>()),
    );
  }
}

