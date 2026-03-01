// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value_parameter_value_string_list_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue {
  /// Represents a boolean value.
  final bool? boolValue;

  /// Represents a double value.
  final double? numberValue;

  /// A list of strings.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue?
  stringListValue;

  /// Represents a string value.
  final String? stringValue;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'stringListValue': ?stringListValue == null
          ? null
          : stringListValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue: map['numberValue'] == null
          ? null
          : map['numberValue'] as double,
      stringListValue: map['stringListValue'] == null
          ? null
          : CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue.fromMap(
              (map['stringListValue'] as Map).cast<String, dynamic>(),
            ),
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
