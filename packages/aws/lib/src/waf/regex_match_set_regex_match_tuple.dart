// ignore_for_file: unused_element, unnecessary_cast

import 'regex_match_set_regex_match_tuple_field_to_match.dart';

class RegexMatchSetRegexMatchTuple {
  /// The part of a web request that you want to search, such as a specified header or a query string.
  final RegexMatchSetRegexMatchTupleFieldToMatch fieldToMatch;

  /// The ID of a Regex Pattern Set.
  final String regexPatternSetId;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  /// Creates a new [RegexMatchSetRegexMatchTuple].
  /// [fieldToMatch] The part of a web request that you want to search, such as a specified header or a query string.
  /// [regexPatternSetId] The ID of a Regex Pattern Set.
  /// [textTransformation] Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  RegexMatchSetRegexMatchTuple({
    required this.fieldToMatch,
    required this.regexPatternSetId,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': fieldToMatch.toMap(),
      'regexPatternSetId': regexPatternSetId,
      'textTransformation': textTransformation,
    };
  }

  factory RegexMatchSetRegexMatchTuple.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetRegexMatchTuple(
      fieldToMatch: RegexMatchSetRegexMatchTupleFieldToMatch.fromMap(
        (map['fieldToMatch'] as Map).cast<String, dynamic>(),
      ),
      regexPatternSetId: map['regexPatternSetId'] as String,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
