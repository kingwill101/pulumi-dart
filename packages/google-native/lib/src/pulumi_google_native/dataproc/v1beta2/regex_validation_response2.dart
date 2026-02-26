// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on regular expressions.
class RegexValidationResponse2 {
  /// RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final List<String> regexes;

  RegexValidationResponse2({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexes'] = regexes;
    return map;
  }

  factory RegexValidationResponse2.fromMap(Map<String, dynamic> map) {
    return RegexValidationResponse2(
      regexes: (map['regexes'] as List).cast<String>(),
    );
  }
}
