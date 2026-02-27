// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple_wafregional.dart';

/// The set of arguments for XssMatchSet.
class XssMatchSetWafregionalArgs {
  /// The name of the set
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  final pulumi.Input<List<XssMatchSetXssMatchTupleWafregional>>? xssMatchTuples;

  XssMatchSetWafregionalArgs({
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
      map['xssMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<XssMatchSetXssMatchTupleWafregional>,
              List<Map<String, dynamic>>>(
          xssMatchTuplesValue,
          (value) => pulumi.Input.encodeList<
              XssMatchSetXssMatchTupleWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory XssMatchSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return XssMatchSetWafregionalArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      xssMatchTuples: pulumi.Input.asOptionalInput<
          List<XssMatchSetXssMatchTupleWafregional>>(map['xssMatchTuples']),
    );
  }
}
