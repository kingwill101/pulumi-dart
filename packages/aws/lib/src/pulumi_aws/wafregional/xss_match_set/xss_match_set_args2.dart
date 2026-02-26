// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple2.dart';

/// The set of arguments for XssMatchSet.
class XssMatchSetArgs2 {
  /// The name of the set
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final Input<List<XssMatchSetXssMatchTuple2>>? xssMatchTuples;

  XssMatchSetArgs2({
    this.name,
    this.region,
    this.xssMatchTuples,
  });

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
      map['xssMatchTuples'] = Input.mapOptionalInputValue<
              List<XssMatchSetXssMatchTuple2>, List<Map<String, dynamic>>>(
          xssMatchTuplesValue,
          (value) =>
              Input.encodeList<XssMatchSetXssMatchTuple2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory XssMatchSetArgs2.fromMap(Map<String, dynamic> map) {
    return XssMatchSetArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      xssMatchTuples: Input.asOptionalInput<List<XssMatchSetXssMatchTuple2>>(
          map['xssMatchTuples']),
    );
  }
}
