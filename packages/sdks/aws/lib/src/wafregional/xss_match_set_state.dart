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
  XssMatchSetState({this.name, this.region, this.xssMatchTuples});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'xssMatchTuples':
          ?pulumi.Input.mapOptionalInputValue<
            List<XssMatchSetXssMatchTuple>,
            List<Map<String, dynamic>>
          >(
            xssMatchTuples,
            (value) =>
                pulumi.Input.encodeList<
                  XssMatchSetXssMatchTuple,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory XssMatchSetState.fromMap(Map<String, dynamic> map) {
    return XssMatchSetState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      xssMatchTuples: (() {
        final guardedValue = map['xssMatchTuples'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(
            guardedValue,
            (value) => XssMatchSetXssMatchTuple.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
