// ignore_for_file: unused_element, unnecessary_cast

import '../sql_injection_match_set_sql_injection_match_tuple_field_to_match/sql_injection_match_set_sql_injection_match_tuple_field_to_match_wafregional.dart';

class SqlInjectionMatchSetSqlInjectionMatchTupleWafregional {
  /// Specifies where in a web request to look for snippets of malicious SQL code.
  final SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchWafregional
      fieldToMatch;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on `field_to_match` before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_SqlInjectionMatchTuple.html#WAF-Type-regional_SqlInjectionMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  SqlInjectionMatchSetSqlInjectionMatchTupleWafregional({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory SqlInjectionMatchSetSqlInjectionMatchTupleWafregional.fromMap(
      Map<String, dynamic> map) {
    return SqlInjectionMatchSetSqlInjectionMatchTupleWafregional(
      fieldToMatch:
          SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchWafregional
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformation: map['textTransformation'] as String,
    );
  }
}
