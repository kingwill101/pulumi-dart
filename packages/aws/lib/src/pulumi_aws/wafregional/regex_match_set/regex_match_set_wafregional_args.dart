// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple_wafregional.dart';

/// The set of arguments for RegexMatchSet.
class RegexMatchSetWafregionalArgs {
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTupleWafregional>>?
      regexMatchTuples;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  RegexMatchSetWafregionalArgs({
    this.name,
    this.regexMatchTuples,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regexMatchTuplesValue = regexMatchTuples;
    if (regexMatchTuplesValue != null) {
      map['regexMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<RegexMatchSetRegexMatchTupleWafregional>,
              List<Map<String, dynamic>>>(
          regexMatchTuplesValue,
          (value) => pulumi.Input.encodeList<
              RegexMatchSetRegexMatchTupleWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegexMatchSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetWafregionalArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      regexMatchTuples: pulumi.Input.asOptionalInput<
              List<RegexMatchSetRegexMatchTupleWafregional>>(
          map['regexMatchTuples']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
