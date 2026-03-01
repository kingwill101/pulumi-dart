// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value.dart';
import 'cloud_control_parameter_spec_validation_allowed_values_value_string_list_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValue {
  /// Represents a boolean value.
  final bool? boolValue;

  /// Represents a double value.
  final double? numberValue;

  /// Sub-parameter values.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationAllowedValuesValueOneofValue?
  oneofValue;

  /// A list of strings.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationAllowedValuesValueStringListValue?
  stringListValue;

  /// Represents a string value.
  final String? stringValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecValidationAllowedValuesValue({
    this.boolValue,
    this.numberValue,
    this.oneofValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'oneofValue': ?oneofValue == null ? null : oneofValue!.toMap(),
      'stringListValue': ?stringListValue == null
          ? null
          : stringListValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationAllowedValuesValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue: map['numberValue'] == null
          ? null
          : map['numberValue'] as double,
      oneofValue: map['oneofValue'] == null
          ? null
          : CloudControlParameterSpecValidationAllowedValuesValueOneofValue.fromMap(
              (map['oneofValue'] as Map).cast<String, dynamic>(),
            ),
      stringListValue: map['stringListValue'] == null
          ? null
          : CloudControlParameterSpecValidationAllowedValuesValueStringListValue.fromMap(
              (map['stringListValue'] as Map).cast<String, dynamic>(),
            ),
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
