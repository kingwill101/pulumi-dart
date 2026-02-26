// ignore_for_file: unused_element, unnecessary_cast

import '../sql_injection_match_set_sql_injection_match_tuple_field_to_match/sql_injection_match_set_sql_injection_match_tuple_field_to_match2.dart';

class SqlInjectionMatchSetSqlInjectionMatchTuple2 {
  /// Specifies where in a web request to look for snippets of malicious SQL code.
  final SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch2 fieldToMatch;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_SqlInjectionMatchTuple.html#WAF-Type-regional_SqlInjectionMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  SqlInjectionMatchSetSqlInjectionMatchTuple2({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory SqlInjectionMatchSetSqlInjectionMatchTuple2.fromMap(
      Map<String, dynamic> map) {
    return SqlInjectionMatchSetSqlInjectionMatchTuple2(
      fieldToMatch:
          SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch2.fromMap(
              (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformation: map['textTransformation'] as String,
    );
  }
}
