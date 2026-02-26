// ignore_for_file: unused_element, unnecessary_cast

import '../regex_match_set_regex_match_tuple_field_to_match/regex_match_set_regex_match_tuple_field_to_match2.dart';

class RegexMatchSetRegexMatchTuple2 {
  /// The part of a web request that you want to search, such as a specified header or a query string.
  final RegexMatchSetRegexMatchTupleFieldToMatch2 fieldToMatch;

  /// The ID of a Regex Pattern Set.
  final String regexPatternSetId;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  RegexMatchSetRegexMatchTuple2({
    required this.fieldToMatch,
    required this.regexPatternSetId,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['regexPatternSetId'] = regexPatternSetId;
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory RegexMatchSetRegexMatchTuple2.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetRegexMatchTuple2(
      fieldToMatch: RegexMatchSetRegexMatchTupleFieldToMatch2.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      regexPatternSetId: map['regexPatternSetId'] as String,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
