// ignore_for_file: unused_element, unnecessary_cast

import '../framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value_string_list_value/framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value_string_list_value.dart';

class FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue {
  /// Represents a boolean value.
  final bool? boolValue;

  /// Represents a double value.
  final double? numberValue;

  /// A list of strings.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue?
      stringListValue;

  /// Represents a string value.
  final String? stringValue;

  FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
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

  factory FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue.fromMap(
      Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue:
          map['numberValue'] == null ? null : map['numberValue'] as double,
      stringListValue: map['stringListValue'] == null
          ? null
          : FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue
              .fromMap((map['stringListValue'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
