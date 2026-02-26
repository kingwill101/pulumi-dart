// ignore_for_file: unused_element, unnecessary_cast

/// Rule used to validate strings.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex {
  /// Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  final bool? exclusive;

  /// The regex applied to the input value(s).
  final String? regex;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex({
    this.exclusive,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusiveValue = exclusive;
    if (exclusiveValue != null) {
      map['exclusive'] = exclusiveValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex(
      exclusive: map['exclusive'] == null ? null : map['exclusive'] as bool,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
