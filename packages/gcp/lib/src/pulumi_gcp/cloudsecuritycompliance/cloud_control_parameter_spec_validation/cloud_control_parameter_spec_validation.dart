// ignore_for_file: unused_element, unnecessary_cast

import '../cloud_control_parameter_spec_validation_allowed_values/cloud_control_parameter_spec_validation_allowed_values.dart';
import '../cloud_control_parameter_spec_validation_int_range/cloud_control_parameter_spec_validation_int_range.dart';
import '../cloud_control_parameter_spec_validation_regexp_pattern/cloud_control_parameter_spec_validation_regexp_pattern.dart';

class CloudControlParameterSpecValidation {
  /// Allowed set of values for the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationAllowedValues? allowedValues;

  /// Number range for number parameters.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationIntRange? intRange;

  /// Regular Expression Validator for parameter values.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationRegexpPattern? regexpPattern;

  CloudControlParameterSpecValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedValuesValue = allowedValues;
    if (allowedValuesValue != null) {
      map['allowedValues'] = allowedValuesValue.toMap();
    }
    final intRangeValue = intRange;
    if (intRangeValue != null) {
      map['intRange'] = intRangeValue.toMap();
    }
    final regexpPatternValue = regexpPattern;
    if (regexpPatternValue != null) {
      map['regexpPattern'] = regexpPatternValue.toMap();
    }
    return map;
  }

  factory CloudControlParameterSpecValidation.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidation(
      allowedValues: map['allowedValues'] == null
          ? null
          : CloudControlParameterSpecValidationAllowedValues.fromMap(
              (map['allowedValues'] as Map).cast<String, dynamic>()),
      intRange: map['intRange'] == null
          ? null
          : CloudControlParameterSpecValidationIntRange.fromMap(
              (map['intRange'] as Map).cast<String, dynamic>()),
      regexpPattern: map['regexpPattern'] == null
          ? null
          : CloudControlParameterSpecValidationRegexpPattern.fromMap(
              (map['regexpPattern'] as Map).cast<String, dynamic>()),
    );
  }
}
