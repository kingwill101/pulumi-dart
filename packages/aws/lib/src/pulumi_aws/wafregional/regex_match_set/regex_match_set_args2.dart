// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple2.dart';

/// The set of arguments for RegexMatchSet.
class RegexMatchSetArgs2 {
  /// The name or description of the Regex Match Set.
  final Input<String>? name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final Input<List<RegexMatchSetRegexMatchTuple2>>? regexMatchTuples;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RegexMatchSetArgs2({
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
      map['regexMatchTuples'] = Input.mapOptionalInputValue<
              List<RegexMatchSetRegexMatchTuple2>, List<Map<String, dynamic>>>(
          regexMatchTuplesValue,
          (value) => Input.encodeList<RegexMatchSetRegexMatchTuple2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegexMatchSetArgs2.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      regexMatchTuples:
          Input.asOptionalInput<List<RegexMatchSetRegexMatchTuple2>>(
              map['regexMatchTuples']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
