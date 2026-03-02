// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_regex_match_tuple.dart';

/// {@template pulumi_waf_regex_match_set_regex_match_set_args_doc}
/// The set of arguments for RegexMatchSet.
/// {@endtemplate}
/// {@macro pulumi_waf_regex_match_set_regex_match_set_args_doc}
class RegexMatchSetArgs {
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;
  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples;

  /// Creates a new [RegexMatchSetArgs].
  /// [name] The name or description of the Regex Match Set.
  /// [regexMatchTuples] The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  RegexMatchSetArgs({
    this.name,
    this.regexMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'regexMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<RegexMatchSetRegexMatchTuple>, List<Map<String, dynamic>>>(regexMatchTuples, (value) => pulumi.Input.encodeList<RegexMatchSetRegexMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegexMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regexMatchTuples: map['regexMatchTuples'] == null ? null : (pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(map['regexMatchTuples'], (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

