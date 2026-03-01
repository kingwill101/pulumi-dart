// ignore_for_file: unused_element, unnecessary_cast


class GetEventRulesRuleEventPatternKeywordFilter {
  /// The keywords that are used to match events.
  final List<String> keyWords;
  /// The relationship between multiple keywords in a condition.
  final String relation;

  /// Creates a new [GetEventRulesRuleEventPatternKeywordFilter].
  /// [keyWords] The keywords that are used to match events.
  /// [relation] The relationship between multiple keywords in a condition.
  GetEventRulesRuleEventPatternKeywordFilter({
    required this.keyWords,
    required this.relation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyWords': keyWords,
      'relation': relation,
    };
  }

  factory GetEventRulesRuleEventPatternKeywordFilter.fromMap(Map<String, dynamic> map) {
    return GetEventRulesRuleEventPatternKeywordFilter(
      keyWords: (map['keyWords'] as List).cast<String>(),
      relation: map['relation'] as String,
    );
  }
}

