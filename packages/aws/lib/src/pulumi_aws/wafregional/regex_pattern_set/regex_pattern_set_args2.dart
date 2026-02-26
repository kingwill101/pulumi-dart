// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegexPatternSet.
class RegexPatternSetArgs2 {
  /// The name or description of the Regex Pattern Set.
  final Input<String>? name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  final Input<List<String>>? regexPatternStrings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RegexPatternSetArgs2({
    this.name,
    this.regexPatternStrings,
    this.region,
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegexPatternSetArgs2.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      regexPatternStrings:
          Input.asOptionalInput<List<String>>(map['regexPatternStrings']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
