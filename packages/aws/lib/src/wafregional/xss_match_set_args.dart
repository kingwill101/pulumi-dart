// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple.dart';

/// {@template pulumi_wafregional_xss_match_set_xss_match_set_args_doc}
/// The set of arguments for XssMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_xss_match_set_xss_match_set_args_doc}
class XssMatchSetArgs {
  /// The name of the set
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>>? xssMatchTuples;

  /// Creates a new [XssMatchSetArgs].
  /// [name] The name of the set
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [xssMatchTuples] The parts of web requests that you want to inspect for cross-site scripting attacks.
  XssMatchSetArgs({
    String? name,
    String? region,
    List<XssMatchSetXssMatchTuple>? xssMatchTuples,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        xssMatchTuples =
            pulumi.Input.asOptionalInput<List<XssMatchSetXssMatchTuple>>(
                xssMatchTuples);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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
      region: map['region'] == null ? null : map['region'] as String,
      xssMatchTuples: map['xssMatchTuples'] == null
          ? null
          : pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(
              map['xssMatchTuples'],
              (value) => XssMatchSetXssMatchTuple.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
