// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventRulesRuleEventPatternKeywordFilter {
  /// The keywords that are used to match events.
  final pulumi.Input<List<String>> keyWords;

  /// The relationship between multiple keywords in a condition.
  final pulumi.Input<String> relation;

  /// Creates a new [GetEventRulesRuleEventPatternKeywordFilter].
  /// [keyWords] The keywords that are used to match events.
  /// [relation] The relationship between multiple keywords in a condition.
  GetEventRulesRuleEventPatternKeywordFilter({
    required this.keyWords,
    required this.relation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyWords': keyWords, 'relation': relation};
  }

  factory GetEventRulesRuleEventPatternKeywordFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEventRulesRuleEventPatternKeywordFilter(
      keyWords: pulumi.Input.fromValue(
        (map['keyWords'] as List).cast<String>(),
      ),
      relation: pulumi.Input.fromValue(map['relation'] as String),
    );
  }
}
