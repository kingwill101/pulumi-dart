// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation_response2.dart';
import 'value_validation_response2.dart';

/// Configuration for parameter validation.
class ParameterValidationResponse2 {
  /// Validation based on regular expressions.
  final RegexValidationResponse2 regex;

  /// Validation based on a list of allowed values.
  final ValueValidationResponse2 values;

  ParameterValidationResponse2({
    required this.regex,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex.toMap();
    map['values'] = values.toMap();
    return map;
  }

  factory ParameterValidationResponse2.fromMap(Map<String, dynamic> map) {
    return ParameterValidationResponse2(
      regex: RegexValidationResponse2.fromMap(
          (map['regex'] as Map).cast<String, dynamic>()),
      values: ValueValidationResponse2.fromMap(
          (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
