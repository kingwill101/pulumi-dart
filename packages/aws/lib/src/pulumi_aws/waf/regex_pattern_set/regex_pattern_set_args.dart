// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegexPatternSet.
class RegexPatternSetArgs {
  /// The name or description of the Regex Pattern Set.
  final Input<String>? name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  final Input<List<String>>? regexPatternStrings;

  RegexPatternSetArgs({
    this.name,
    this.regexPatternStrings,
  });

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
      name: Input.asOptionalInput<String>(map['name']),
      regexPatternStrings:
          Input.asOptionalInput<List<String>>(map['regexPatternStrings']),
    );
  }
}
