// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_sql_injection_match_tuple_field_to_match.dart';

class SqlInjectionMatchSetSqlInjectionMatchTuple {
  /// Specifies where in a web request to look for snippets of malicious SQL code.
  final pulumi.Input<SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch> fieldToMatch;
  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on `field_to_match` before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_SqlInjectionMatchTuple.html#WAF-Type-regional_SqlInjectionMatchTuple-TextTransformation)
  /// for all supported values.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [SqlInjectionMatchSetSqlInjectionMatchTuple].
  /// [fieldToMatch] Specifies where in a web request to look for snippets of malicious SQL code.
  /// [textTransformation] Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  SqlInjectionMatchSetSqlInjectionMatchTuple({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': pulumi.Input.mapInputValue<SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'textTransformation': textTransformation,
    };
  }

  factory SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetSqlInjectionMatchTuple(
      fieldToMatch: (SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>())).input(),
      textTransformation: (map['textTransformation'] as String).input(),
    );
  }
}

