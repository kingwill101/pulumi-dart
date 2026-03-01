// ignore_for_file: unused_element, unnecessary_cast

import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value.dart';
import 'framework_cloud_control_detail_parameter_parameter_value_string_list_value.dart';

class FrameworkCloudControlDetailParameterParameterValue {
  /// Represents a boolean value.
  final bool? boolValue;
  /// Represents a double value.
  final double? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValueOneofValue? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValueStringListValue? stringListValue;
  /// Represents a string value.
  final String? stringValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  FrameworkCloudControlDetailParameterParameterValue({
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
      'stringListValue': ?stringListValue == null ? null : stringListValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue: map['numberValue'] == null ? null : map['numberValue'] as double,
      oneofValue: map['oneofValue'] == null ? null : FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap((map['oneofValue'] as Map).cast<String, dynamic>()),
      stringListValue: map['stringListValue'] == null ? null : FrameworkCloudControlDetailParameterParameterValueStringListValue.fromMap((map['stringListValue'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

