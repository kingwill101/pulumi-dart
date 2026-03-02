// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_regex_pattern_set_regex_pattern_set_args_doc}
/// The set of arguments for RegexPatternSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_regex_pattern_set_regex_pattern_set_args_doc}
class RegexPatternSetArgs {
  /// The name or description of the Regex Pattern Set.
  final pulumi.Input<String>? name;
  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  final pulumi.Input<List<String>>? regexPatternStrings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RegexPatternSetArgs].
  /// [name] The name or description of the Regex Pattern Set.
  /// [regexPatternStrings] A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RegexPatternSetArgs({
    this.name,
    this.regexPatternStrings,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'regexPatternStrings': ?regexPatternStrings,
      'region': ?region,
    };
  }

  factory RegexPatternSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regexPatternStrings: map['regexPatternStrings'] == null ? null : ((map['regexPatternStrings'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

