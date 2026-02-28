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
  RegexPatternSetArgs({
    String? name,
    List<String>? regexPatternStrings,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        regexPatternStrings =
            pulumi.Input.asOptionalInput<List<String>>(regexPatternStrings);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regexPatternStringsValue = regexPatternStrings;
    if (regexPatternStringsValue != null) {
      map['regexPatternStrings'] = regexPatternStringsValue;
    }
    return map;
  }

  factory RegexPatternSetArgs.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs(
      name: map['name'] == null ? null : map['name'] as String,
      regexPatternStrings: map['regexPatternStrings'] == null
          ? null
          : (map['regexPatternStrings'] as List).cast<String>(),
    );
  }
}
