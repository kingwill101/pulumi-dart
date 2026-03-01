// ignore_for_file: unused_element, unnecessary_cast

import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value_string_list_value.dart';

class FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue {
  /// Represents a boolean value.
  final bool? boolValue;
  /// Represents a double value.
  final double? numberValue;
  /// A list of strings.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue? stringListValue;
  /// Represents a string value.
  final String? stringValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'stringListValue': ?stringListValue == null ? null : stringListValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue: map['numberValue'] == null ? null : map['numberValue'] as double,
      stringListValue: map['stringListValue'] == null ? null : FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue.fromMap((map['stringListValue'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

