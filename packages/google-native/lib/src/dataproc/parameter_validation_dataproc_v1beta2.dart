// ignore_for_file: unused_element, unnecessary_cast

import 'regex_validation_dataproc_v1beta2.dart';
import 'value_validation_dataproc_v1beta2.dart';

/// Configuration for parameter validation.
class ParameterValidationDataprocV1beta2 {
  /// Validation based on regular expressions.
  final RegexValidationDataprocV1beta2? regex;
  /// Validation based on a list of allowed values.
  final ValueValidationDataprocV1beta2? values;

  /// Creates a new [ParameterValidationDataprocV1beta2].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  ParameterValidationDataprocV1beta2({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex == null ? null : regex!.toMap(),
      'values': ?values == null ? null : values!.toMap(),
    };
  }

  factory ParameterValidationDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ParameterValidationDataprocV1beta2(
      regex: map['regex'] == null ? null : RegexValidationDataprocV1beta2.fromMap((map['regex'] as Map).cast<String, dynamic>()),
      values: map['values'] == null ? null : ValueValidationDataprocV1beta2.fromMap((map['values'] as Map).cast<String, dynamic>()),
    );
  }
}

