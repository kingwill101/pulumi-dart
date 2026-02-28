// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation_response.dart';
import 'value_validation_response.dart';

/// Configuration for parameter validation.
class ParameterValidationResponse {
  /// Validation based on regular expressions.
  final RegexValidationResponse regex;

  /// Validation based on a list of allowed values.
  final ValueValidationResponse values;

  /// Creates a new [ParameterValidationResponse].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  ParameterValidationResponse({
    required this.regex,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex.toMap();
    map['values'] = values.toMap();
    return map;
  }

  factory ParameterValidationResponse.fromMap(Map<String, dynamic> map) {
    return ParameterValidationResponse(
      regex: RegexValidationResponse.fromMap(
          (map['regex'] as Map).cast<String, dynamic>()),
      values: ValueValidationResponse.fromMap(
          (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
