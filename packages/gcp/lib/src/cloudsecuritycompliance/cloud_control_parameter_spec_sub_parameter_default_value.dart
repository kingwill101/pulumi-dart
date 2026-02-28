// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_default_value_oneof_value.dart';
import 'cloud_control_parameter_spec_sub_parameter_default_value_string_list_value.dart';

class CloudControlParameterSpecSubParameterDefaultValue {
  /// Represents a boolean value.
  final bool? boolValue;
  /// Represents a double value.
  final double? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterDefaultValueOneofValue? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterDefaultValueStringListValue? stringListValue;
  /// Represents a string value.
  final String? stringValue;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecSubParameterDefaultValue({
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

  factory CloudControlParameterSpecSubParameterDefaultValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      numberValue: map['numberValue'] == null ? null : map['numberValue'] as double,
      oneofValue: map['oneofValue'] == null ? null : CloudControlParameterSpecSubParameterDefaultValueOneofValue.fromMap((map['oneofValue'] as Map).cast<String, dynamic>()),
      stringListValue: map['stringListValue'] == null ? null : CloudControlParameterSpecSubParameterDefaultValueStringListValue.fromMap((map['stringListValue'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

