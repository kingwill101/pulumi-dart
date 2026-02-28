// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation_response_dataproc_v1beta2.dart';
import 'value_validation_response_dataproc_v1beta2.dart';

/// Configuration for parameter validation.
class ParameterValidationResponseDataprocV1beta2 {
  /// Validation based on regular expressions.
  final RegexValidationResponseDataprocV1beta2 regex;

  /// Validation based on a list of allowed values.
  final ValueValidationResponseDataprocV1beta2 values;

  /// Creates a new [ParameterValidationResponseDataprocV1beta2].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  ParameterValidationResponseDataprocV1beta2({
    required this.regex,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex.toMap();
    map['values'] = values.toMap();
    return map;
  }

  factory ParameterValidationResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ParameterValidationResponseDataprocV1beta2(
      regex: RegexValidationResponseDataprocV1beta2.fromMap(
          (map['regex'] as Map).cast<String, dynamic>()),
      values: ValueValidationResponseDataprocV1beta2.fromMap(
          (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
