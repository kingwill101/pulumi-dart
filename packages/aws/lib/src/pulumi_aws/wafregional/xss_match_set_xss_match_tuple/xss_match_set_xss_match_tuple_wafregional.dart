// ignore_for_file: unused_element, unnecessary_cast

import '../xss_match_set_xss_match_tuple_field_to_match/xss_match_set_xss_match_tuple_field_to_match_wafregional.dart';

class XssMatchSetXssMatchTupleWafregional {
  /// Specifies where in a web request to look for cross-site scripting attacks.
  final XssMatchSetXssMatchTupleFieldToMatchWafregional fieldToMatch;

  /// Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.
  final String textTransformation;

  XssMatchSetXssMatchTupleWafregional({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory XssMatchSetXssMatchTupleWafregional.fromMap(
      Map<String, dynamic> map) {
    return XssMatchSetXssMatchTupleWafregional(
      fieldToMatch: XssMatchSetXssMatchTupleFieldToMatchWafregional.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformation: map['textTransformation'] as String,
    );
  }
}
