// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple.dart';

/// Input properties used for looking up and filtering XssMatchSet resources.
class XssMatchSetState {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;
  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>>? xssMatchTuples;

  /// Creates a new [XssMatchSetState].
  /// [arn] Amazon Resource Name (ARN)
  /// [name] The name or description of the SizeConstraintSet.
  /// [xssMatchTuples] The parts of web requests that you want to inspect for cross-site scripting attacks.
  XssMatchSetState({
    this.arn,
    this.name,
    this.xssMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'xssMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<XssMatchSetXssMatchTuple>, List<Map<String, dynamic>>>(xssMatchTuples, (value) => pulumi.Input.encodeList<XssMatchSetXssMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory XssMatchSetState.fromMap(Map<String, dynamic> map) {
    return XssMatchSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      xssMatchTuples: map['xssMatchTuples'] == null ? null : ((pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(map['xssMatchTuples']!, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

