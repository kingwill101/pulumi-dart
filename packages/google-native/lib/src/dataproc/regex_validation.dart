// ignore_for_file: unused_element, unnecessary_cast


/// Validation based on regular expressions.
class RegexValidation {
  /// RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final List<String> regexes;

  /// Creates a new [RegexValidation].
  /// [regexes] RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  RegexValidation({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexes': regexes,
    };
  }

  factory RegexValidation.fromMap(Map<String, dynamic> map) {
    return RegexValidation(
      regexes: (map['regexes'] as List).cast<String>(),
    );
  }
}

