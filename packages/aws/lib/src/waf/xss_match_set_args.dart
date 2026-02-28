// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple.dart';

/// {@template pulumi_waf_xss_match_set_xss_match_set_args_doc}
/// The set of arguments for XssMatchSet.
/// {@endtemplate}
/// {@macro pulumi_waf_xss_match_set_xss_match_set_args_doc}
class XssMatchSetArgs {
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>>? xssMatchTuples;

  /// Creates a new [XssMatchSetArgs].
  /// [name] The name or description of the SizeConstraintSet.
  /// [xssMatchTuples] The parts of web requests that you want to inspect for cross-site scripting attacks.
  XssMatchSetArgs({
    String? name,
    List<XssMatchSetXssMatchTuple>? xssMatchTuples,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        xssMatchTuples =
            pulumi.Input.asOptionalInput<List<XssMatchSetXssMatchTuple>>(
                xssMatchTuples);

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
      name: map['name'] == null ? null : map['name'] as String,
      xssMatchTuples: map['xssMatchTuples'] == null
          ? null
          : pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(
              map['xssMatchTuples'],
              (value) => XssMatchSetXssMatchTuple.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
