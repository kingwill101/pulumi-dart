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
  ParameterValidation({this.regex, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex == null ? null : regex!.toMap(),
      'values': ?values == null ? null : values!.toMap(),
    };
  }

  factory ParameterValidation.fromMap(Map<String, dynamic> map) {
    return ParameterValidation(
      regex: map['regex'] == null
          ? null
          : RegexValidation.fromMap(
              (map['regex'] as Map).cast<String, dynamic>(),
            ),
      values: map['values'] == null
          ? null
          : ValueValidation.fromMap(
              (map['values'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
