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
  const XssMatchSetArgs({
    this.name,
    this.xssMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'xssMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<XssMatchSetXssMatchTuple>, List<Map<String, dynamic>>>(xssMatchTuples, (value) => pulumi.Input.encodeList<XssMatchSetXssMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory XssMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return XssMatchSetArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xssMatchTuples: (() { final guardedValue = map['xssMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(guardedValue, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
