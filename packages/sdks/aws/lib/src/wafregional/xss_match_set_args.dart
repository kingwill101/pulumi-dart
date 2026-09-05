// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple.dart';

/// {@template pulumi_wafregional_xss_match_set_xss_match_set_args_doc}
/// The set of arguments for XssMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_xss_match_set_xss_match_set_args_doc}
class XssMatchSetArgs {
  /// The name of the set
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>?>? xssMatchTuples;

  /// Creates a new [XssMatchSetArgs].
  /// [name] The name of the set
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [xssMatchTuples] The parts of web requests that you want to inspect for cross-site scripting attacks.
  const XssMatchSetArgs({
    this.name,
    this.region,
    this.xssMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'xssMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<XssMatchSetXssMatchTuple>, List<Map<String, dynamic>>>(xssMatchTuples, (value) => pulumi.Input.encodeList<XssMatchSetXssMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory XssMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return XssMatchSetArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xssMatchTuples: (() { final guardedValue = map['xssMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(guardedValue, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
