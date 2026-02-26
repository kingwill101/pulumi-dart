// ignore_for_file: unused_element, unnecessary_cast

import '../byte_match_set_byte_match_tuple_field_to_match/byte_match_set_byte_match_tuple_field_to_match.dart';

class ByteMatchSetByteMatchTuple {
  /// The part of a web request that you want to search, such as a specified header or a query string.
  final ByteMatchSetByteMatchTupleFieldToMatch fieldToMatch;

  /// Within the portion of a web request that you want to search
  /// (for example, in the query string, if any), specify where you want to search.
  /// e.g., `CONTAINS`, `CONTAINS_WORD` or `EXACTLY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint)
  /// for all supported values.
  final String positionalConstraint;

  /// The value that you want to search for within the field specified by <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span>, e.g., <span pulumi-lang-nodejs="`badrefer1`" pulumi-lang-dotnet="`Badrefer1`" pulumi-lang-go="`badrefer1`" pulumi-lang-python="`badrefer1`" pulumi-lang-yaml="`badrefer1`" pulumi-lang-java="`badrefer1`">`badrefer1`</span>.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_waf_ByteMatchTuple.html)
  /// for all supported values.
  final String? targetString;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on <span pulumi-lang-nodejs="`targetString`" pulumi-lang-dotnet="`TargetString`" pulumi-lang-go="`targetString`" pulumi-lang-python="`target_string`" pulumi-lang-yaml="`targetString`" pulumi-lang-java="`targetString`">`target_string`</span> before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  ByteMatchSetByteMatchTuple({
    required this.fieldToMatch,
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['positionalConstraint'] = positionalConstraint;
    final targetStringValue = targetString;
    if (targetStringValue != null) {
      map['targetString'] = targetStringValue;
    }
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory ByteMatchSetByteMatchTuple.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTuple(
      fieldToMatch: ByteMatchSetByteMatchTupleFieldToMatch.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      positionalConstraint: map['positionalConstraint'] as String,
      targetString:
          map['targetString'] == null ? null : map['targetString'] as String,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
