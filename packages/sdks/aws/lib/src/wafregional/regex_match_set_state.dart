// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_regex_match_tuple.dart';

/// Input properties used for looking up and filtering RegexMatchSet resources.
class RegexMatchSetState {
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;
  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RegexMatchSetState].
  /// [name] The name or description of the Regex Match Set.
  /// [regexMatchTuples] The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RegexMatchSetState({
    this.name,
    this.regexMatchTuples,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'regexMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<RegexMatchSetRegexMatchTuple>, List<Map<String, dynamic>>>(regexMatchTuples, (value) => pulumi.Input.encodeList<RegexMatchSetRegexMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory RegexMatchSetState.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetState(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      regexMatchTuples: map['regexMatchTuples'] == null ? null : ((pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(map['regexMatchTuples']!, (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

