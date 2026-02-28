// ignore_for_file: unused_element, unnecessary_cast


/// Rule used to validate strings.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse {
  /// Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  final bool exclusive;
  /// The regex applied to the input value(s).
  final String regex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse].
  /// [exclusive] Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  /// [regex] The regex applied to the input value(s).
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse({
    required this.exclusive,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusive': exclusive,
      'regex': regex,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse(
      exclusive: map['exclusive'] as bool,
      regex: map['regex'] as String,
    );
  }
}

