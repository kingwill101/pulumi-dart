// ignore_for_file: unused_element, unnecessary_cast


class GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection {
  /// Required. Name of the section.
  final String section;
  /// Required. Summary text for the section.
  final String summary;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection].
  /// [section] Required. Name of the section.
  /// [summary] Required. Summary text for the section.
  GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection({
    required this.section,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'section': section,
      'summary': summary,
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection(
      section: map['section'] as String,
      summary: map['summary'] as String,
    );
  }
}

