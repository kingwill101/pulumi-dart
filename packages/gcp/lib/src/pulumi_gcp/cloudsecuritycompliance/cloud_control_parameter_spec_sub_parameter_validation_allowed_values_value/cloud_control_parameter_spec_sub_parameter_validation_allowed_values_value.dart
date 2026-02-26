// ignore_for_file: unused_element, unnecessary_cast

import '../cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value/cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value.dart';
import '../cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_string_list_value/cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_string_list_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValuesValue {
  /// Represents a boolean value.
  final bool? boolValue;

  /// Represents a double value.
  final double? numberValue;

  /// Sub-parameter values.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue?
      oneofValue;

  /// A list of strings.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue?
      stringListValue;

  /// Represents a string value.
  final String? stringValue;

  CloudControlParameterSpecSubParameterValidationAllowedValuesValue({
    this.boolValue,
    this.numberValue,
    this.oneofValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boolValueValue = boolValue;
    if (boolValueValue != null) {
      map['boolValue'] = boolValueValue;
    }
    final numberValueValue = numberValue;
    if (numberValueValue != null) {
      map['numberValue'] = numberValueValue;
    }
    final oneofValueValue = oneofValue;
    if (oneofValueValue != null) {
      map['oneofValue'] = oneofValueValue.toMap();
    }
    final stringListValueValue = stringListValue;
    if (stringListValueValue != null) {
      map['stringListValue'] = stringListValueValue.toMap();
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue:
          map['numberValue'] == null ? null : map['numberValue'] as double,
      oneofValue: map['oneofValue'] == null
          ? null
          : CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue
              .fromMap((map['oneofValue'] as Map).cast<String, dynamic>()),
      stringListValue: map['stringListValue'] == null
          ? null
          : CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue
              .fromMap((map['stringListValue'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
