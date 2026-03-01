// ignore_for_file: unused_element, unnecessary_cast


class GeneratorSummarizationContextSummarizationSection {
  /// Optional. Definition of the section, for example, "what the customer needs help with or has question about."
  final String? definition;
  /// Optional. Name of the section, for example, "situation".
  final String? key;
  /// Optional. Type of the summarization section.
  /// Possible values are: `SITUATION`, `ACTION`, `RESOLUTION`, `REASON_FOR_CANCELLATION`, `CUSTOMER_SATISFACTION`, `ENTITIES`, `CUSTOMER_DEFINED`, `SITUATION_CONCISE`, `ACTION_CONCISE`.
  final String? type;

  /// Creates a new [GeneratorSummarizationContextSummarizationSection].
  /// [definition] Optional. Definition of the section, for example, "what the customer needs help with or has question about."
  /// [key] Optional. Name of the section, for example, "situation".
  /// [type] Optional. Type of the summarization section.
  GeneratorSummarizationContextSummarizationSection({
    this.definition,
    this.key,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'key': ?key,
      'type': ?type,
    };
  }

  factory GeneratorSummarizationContextSummarizationSection.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextSummarizationSection(
      definition: map['definition'] == null ? null : map['definition'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

