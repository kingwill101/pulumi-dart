// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_regex_pattern_set_regex_pattern_set_args_doc}
/// The set of arguments for RegexPatternSet.
/// {@endtemplate}
/// {@macro pulumi_waf_regex_pattern_set_regex_pattern_set_args_doc}
class RegexPatternSetArgs {
  /// The name or description of the Regex Pattern Set.
  final pulumi.Input<String>? name;
  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  final pulumi.Input<List<String>>? regexPatternStrings;

  /// Creates a new [RegexPatternSetArgs].
  /// [name] The name or description of the Regex Pattern Set.
  /// [regexPatternStrings] A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  const RegexPatternSetArgs({
    this.name,
    this.regexPatternStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'regexPatternStrings': ?regexPatternStrings,
    };
  }

  factory RegexPatternSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regexPatternStrings: (() { final guardedValue = map['regexPatternStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

