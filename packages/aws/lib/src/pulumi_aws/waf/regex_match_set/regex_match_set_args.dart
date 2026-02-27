// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple.dart';

/// The set of arguments for RegexMatchSet.
class RegexMatchSetArgs {
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples;

  RegexMatchSetArgs({
    this.name,
    this.regexMatchTuples,
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
              List<RegexMatchSetRegexMatchTuple>, List<Map<String, dynamic>>>(
          regexMatchTuplesValue,
          (value) => pulumi.Input.encodeList<RegexMatchSetRegexMatchTuple,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegexMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      regexMatchTuples:
          pulumi.Input.asOptionalInput<List<RegexMatchSetRegexMatchTuple>>(
              map['regexMatchTuples']),
    );
  }
}
