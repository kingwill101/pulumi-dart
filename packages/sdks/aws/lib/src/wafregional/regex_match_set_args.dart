// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_regex_match_tuple.dart';

/// {@template pulumi_wafregional_regex_match_set_regex_match_set_args_doc}
/// The set of arguments for RegexMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_regex_match_set_regex_match_set_args_doc}
class RegexMatchSetArgs {
  /// The name or description of the Regex Match Set.
  final pulumi.Input<String>? name;
  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  final pulumi.Input<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RegexMatchSetArgs].
  /// [name] The name or description of the Regex Match Set.
  /// [regexMatchTuples] The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RegexMatchSetArgs({
    pulumi.Output<String>? name,
    pulumi.Output<List<RegexMatchSetRegexMatchTuple>>? regexMatchTuples,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      regexMatchTuples = pulumi.Input.asOptionalInput<List<RegexMatchSetRegexMatchTuple>>(regexMatchTuples),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'regexMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<RegexMatchSetRegexMatchTuple>, List<Map<String, dynamic>>>(regexMatchTuples, (value) => pulumi.Input.encodeList<RegexMatchSetRegexMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory RegexMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexMatchSetArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regexMatchTuples: map['regexMatchTuples'] == null ? null : pulumi.Output.create<List<RegexMatchSetRegexMatchTuple>>(pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(map['regexMatchTuples'], (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

