// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_output_summary_suggestion_summary_section.dart';

class GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion {
  /// Required. All the parts of generated summary.
  /// Structure is documented below.
  final List<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection> summarySections;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion].
  /// [summarySections] Required. All the parts of generated summary.
  GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion({
    required this.summarySections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summarySections': pulumi.Input.encodeList<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection, Map<String, dynamic>>(summarySections, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion(
      summarySections: pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection>(map['summarySections'], (value) => GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

