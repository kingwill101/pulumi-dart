// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_xss_match_tuple.dart';

/// Input properties used for looking up and filtering XssMatchSet resources.
class XssMatchSetState {
  /// The name of the set
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTuple>>? xssMatchTuples;

  /// Creates a new [XssMatchSetState].
  /// [name] The name of the set
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [xssMatchTuples] The parts of web requests that you want to inspect for cross-site scripting attacks.
  XssMatchSetState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<XssMatchSetXssMatchTuple>>? xssMatchTuples,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      xssMatchTuples = pulumi.Input.asOptionalInput<List<XssMatchSetXssMatchTuple>>(xssMatchTuples);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'xssMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<XssMatchSetXssMatchTuple>, List<Map<String, dynamic>>>(xssMatchTuples, (value) => pulumi.Input.encodeList<XssMatchSetXssMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory XssMatchSetState.fromMap(Map<String, dynamic> map) {
    return XssMatchSetState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      xssMatchTuples: map['xssMatchTuples'] == null ? null : pulumi.Output.create<List<XssMatchSetXssMatchTuple>>(pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(map['xssMatchTuples'], (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

