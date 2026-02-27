// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple.dart';

/// The set of arguments for XssMatchSet.
class XssMatchSetArgs {
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>>? xssMatchTuples;

  XssMatchSetArgs({
    this.name,
    this.xssMatchTuples,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final xssMatchTuplesValue = xssMatchTuples;
    if (xssMatchTuplesValue != null) {
      map['xssMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<XssMatchSetXssMatchTuple>, List<Map<String, dynamic>>>(
          xssMatchTuplesValue,
          (value) => pulumi.Input.encodeList<XssMatchSetXssMatchTuple,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory XssMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return XssMatchSetArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      xssMatchTuples:
          pulumi.Input.asOptionalInput<List<XssMatchSetXssMatchTuple>>(
              map['xssMatchTuples']),
    );
  }
}
