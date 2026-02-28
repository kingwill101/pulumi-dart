// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation.dart';
import 'value_validation.dart';

/// Configuration for parameter validation.
class ParameterValidation {
  /// Validation based on regular expressions.
  final RegexValidation? regex;

  /// Validation based on a list of allowed values.
  final ValueValidation? values;

  /// Creates a new [ParameterValidation].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  ParameterValidation({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue.toMap();
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue.toMap();
    }
    return map;
  }

  factory ParameterValidation.fromMap(Map<String, dynamic> map) {
    return ParameterValidation(
      regex: map['regex'] == null
          ? null
          : RegexValidation.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      values: map['values'] == null
          ? null
          : ValueValidation.fromMap(
              (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
