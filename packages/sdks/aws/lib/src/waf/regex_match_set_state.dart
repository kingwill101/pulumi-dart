// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_regex_match_tuple.dart';

/// Input properties used for looking up and filtering RegexMatchSet resources.
class RegexMatchSetState {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;
  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples;

  /// Creates a new [RegexMatchSetState].
  /// [arn] Amazon Resource Name (ARN)
  /// [name] The name or description of the Regex Match Set.
  /// [regexMatchTuples] The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  RegexMatchSetState({
    this.arn,
    this.name,
    this.regexMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'regexMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<RegexMatchSetRegexMatchTuple>, List<Map<String, dynamic>>>(regexMatchTuples, (value) => pulumi.Input.encodeList<RegexMatchSetRegexMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegexMatchSetState.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regexMatchTuples: map['regexMatchTuples'] == null ? null : (pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(map['regexMatchTuples'], (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

