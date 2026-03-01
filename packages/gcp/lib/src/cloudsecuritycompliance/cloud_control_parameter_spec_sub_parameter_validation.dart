// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation_int_range.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation_regexp_pattern.dart';

class CloudControlParameterSpecSubParameterValidation {
  /// Allowed set of values for the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationAllowedValues? allowedValues;
  /// Number range for number parameters.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationIntRange? intRange;
  /// Regular Expression Validator for parameter values.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationRegexpPattern? regexpPattern;

  /// Creates a new [CloudControlParameterSpecSubParameterValidation].
  /// [allowedValues] Allowed set of values for the parameter.
  /// [intRange] Number range for number parameters.
  /// [regexpPattern] Regular Expression Validator for parameter values.
  CloudControlParameterSpecSubParameterValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues == null ? null : allowedValues!.toMap(),
      'intRange': ?intRange == null ? null : intRange!.toMap(),
      'regexpPattern': ?regexpPattern == null ? null : regexpPattern!.toMap(),
    };
  }

  factory CloudControlParameterSpecSubParameterValidation.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidation(
      allowedValues: map['allowedValues'] == null ? null : CloudControlParameterSpecSubParameterValidationAllowedValues.fromMap((map['allowedValues'] as Map).cast<String, dynamic>()),
      intRange: map['intRange'] == null ? null : CloudControlParameterSpecSubParameterValidationIntRange.fromMap((map['intRange'] as Map).cast<String, dynamic>()),
      regexpPattern: map['regexpPattern'] == null ? null : CloudControlParameterSpecSubParameterValidationRegexpPattern.fromMap((map['regexpPattern'] as Map).cast<String, dynamic>()),
    );
  }
}

