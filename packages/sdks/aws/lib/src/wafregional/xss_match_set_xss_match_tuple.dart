// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple_field_to_match.dart';

class XssMatchSetXssMatchTuple {
  /// Specifies where in a web request to look for cross-site scripting attacks.
  final pulumi.Input<XssMatchSetXssMatchTupleFieldToMatch> fieldToMatch;
  /// Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [XssMatchSetXssMatchTuple].
  /// [fieldToMatch] Specifies where in a web request to look for cross-site scripting attacks.
  /// [textTransformation] Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.
  XssMatchSetXssMatchTuple({
    required this.fieldToMatch,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': pulumi.Input.mapInputValue<XssMatchSetXssMatchTupleFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'textTransformation': textTransformation,
    };
  }

  factory XssMatchSetXssMatchTuple.fromMap(Map<String, dynamic> map) {
    return XssMatchSetXssMatchTuple(
      fieldToMatch: (XssMatchSetXssMatchTupleFieldToMatch.fromMap((map['fieldToMatch']! as Map).cast<String, dynamic>())).input(),
      textTransformation: (map['textTransformation'] as String).input(),
    );
  }
}

