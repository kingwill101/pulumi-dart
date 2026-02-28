// ignore_for_file: unused_element, unnecessary_cast

import 'generator_summarization_context_few_shot_example_output_summary_suggestion.dart';

class GeneratorSummarizationContextFewShotExampleOutput {
  /// Optional. Suggested summary.
  /// Structure is documented below.
  final GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion?
      summarySuggestion;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutput].
  /// [summarySuggestion] Optional. Suggested summary.
  GeneratorSummarizationContextFewShotExampleOutput({
    this.summarySuggestion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final summarySuggestionValue = summarySuggestion;
    if (summarySuggestionValue != null) {
      map['summarySuggestion'] = summarySuggestionValue.toMap();
    }
    return map;
  }

  factory GeneratorSummarizationContextFewShotExampleOutput.fromMap(
      Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutput(
      summarySuggestion: map['summarySuggestion'] == null
          ? null
          : GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion
              .fromMap(
                  (map['summarySuggestion'] as Map).cast<String, dynamic>()),
    );
  }
}
