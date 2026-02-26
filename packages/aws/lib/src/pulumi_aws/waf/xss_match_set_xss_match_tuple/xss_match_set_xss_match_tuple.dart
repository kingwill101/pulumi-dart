// ignore_for_file: unused_element, unnecessary_cast

import '../xss_match_set_xss_match_tuple_field_to_match/xss_match_set_xss_match_tuple_field_to_match.dart';

class XssMatchSetXssMatchTuple {
  /// Specifies where in a web request to look for cross-site scripting attacks.
  final XssMatchSetXssMatchTupleFieldToMatch fieldToMatch;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on <span pulumi-lang-nodejs="`targetString`" pulumi-lang-dotnet="`TargetString`" pulumi-lang-go="`targetString`" pulumi-lang-python="`target_string`" pulumi-lang-yaml="`targetString`" pulumi-lang-java="`targetString`">`target_string`</span> before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_XssMatchTuple.html#WAF-Type-XssMatchTuple-TextTransformation)
  /// for all supported values.
  final String textTransformation;

  XssMatchSetXssMatchTuple({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory XssMatchSetXssMatchTuple.fromMap(Map<String, dynamic> map) {
    return XssMatchSetXssMatchTuple(
      fieldToMatch: XssMatchSetXssMatchTupleFieldToMatch.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformation: map['textTransformation'] as String,
    );
  }
}
