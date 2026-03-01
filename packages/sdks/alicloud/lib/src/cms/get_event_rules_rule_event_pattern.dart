// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_rules_rule_event_pattern_keyword_filter.dart';

class GetEventRulesRuleEventPattern {
  /// The list of event types.
  final List<String> eventTypeLists;
  /// The filter keyword.
  final List<GetEventRulesRuleEventPatternKeywordFilter> keywordFilters;
  /// The list of event levels.
  final List<String> levelLists;
  /// The list of event names.
  final List<String> nameLists;
  /// The type of the cloud service.
  final String product;
  /// The SQL condition that is used to filter events.
  final String sqlFilter;

  /// Creates a new [GetEventRulesRuleEventPattern].
  /// [eventTypeLists] The list of event types.
  /// [keywordFilters] The filter keyword.
  /// [levelLists] The list of event levels.
  /// [nameLists] The list of event names.
  /// [product] The type of the cloud service.
  /// [sqlFilter] The SQL condition that is used to filter events.
  GetEventRulesRuleEventPattern({
    required this.eventTypeLists,
    required this.keywordFilters,
    required this.levelLists,
    required this.nameLists,
    required this.product,
    required this.sqlFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypeLists': eventTypeLists,
      'keywordFilters': pulumi.Input.encodeList<GetEventRulesRuleEventPatternKeywordFilter, Map<String, dynamic>>(keywordFilters, (value) => value.toMap()),
      'levelLists': levelLists,
      'nameLists': nameLists,
      'product': product,
      'sqlFilter': sqlFilter,
    };
  }

  factory GetEventRulesRuleEventPattern.fromMap(Map<String, dynamic> map) {
    return GetEventRulesRuleEventPattern(
      eventTypeLists: (map['eventTypeLists'] as List).cast<String>(),
      keywordFilters: pulumi.Input.decodeList<GetEventRulesRuleEventPatternKeywordFilter>(map['keywordFilters'], (value) => GetEventRulesRuleEventPatternKeywordFilter.fromMap((value as Map).cast<String, dynamic>())),
      levelLists: (map['levelLists'] as List).cast<String>(),
      nameLists: (map['nameLists'] as List).cast<String>(),
      product: map['product'] as String,
      sqlFilter: map['sqlFilter'] as String,
    );
  }
}

