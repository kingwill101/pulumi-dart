// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation2.dart';
import 'value_validation2.dart';

/// Configuration for parameter validation.
class ParameterValidation2 {
  /// Validation based on regular expressions.
  final RegexValidation2? regex;

  /// Validation based on a list of allowed values.
  final ValueValidation2? values;

  ParameterValidation2({
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

  factory ParameterValidation2.fromMap(Map<String, dynamic> map) {
    return ParameterValidation2(
      regex: map['regex'] == null
          ? null
          : RegexValidation2.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      values: map['values'] == null
          ? null
          : ValueValidation2.fromMap(
              (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
