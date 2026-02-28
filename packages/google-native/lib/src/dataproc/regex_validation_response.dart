// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on regular expressions.
class RegexValidationResponse {
  /// RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final List<String> regexes;

  /// Creates a new [RegexValidationResponse].
  /// [regexes] RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  RegexValidationResponse({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexes'] = regexes;
    return map;
  }

  factory RegexValidationResponse.fromMap(Map<String, dynamic> map) {
    return RegexValidationResponse(
      regexes: (map['regexes'] as List).cast<String>(),
    );
  }
}
