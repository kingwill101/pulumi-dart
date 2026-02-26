// ignore_for_file: unused_element, unnecessary_cast

class GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection {
  /// Required. Name of the section.
  final String section;

  /// Required. Summary text for the section.
  final String summary;

  GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection({
    required this.section,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['section'] = section;
    map['summary'] = summary;
    return map;
  }

  factory GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection.fromMap(
      Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection(
      section: map['section'] as String,
      summary: map['summary'] as String,
    );
  }
}
