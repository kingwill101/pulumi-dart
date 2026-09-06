// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the runbook parameter type.
class RunbookParameterResponse {
  /// Gets or sets the default value of parameter.
  final pulumi.Input<String?>? defaultValue;
  /// Gets or sets a Boolean value to indicate whether the parameter is mandatory or not.
  final pulumi.Input<bool?>? isMandatory;
  /// Get or sets the position of the parameter.
  final pulumi.Input<int?>? position;
  /// Gets or sets the type of the parameter.
  final pulumi.Input<String?>? type;

  /// Creates a new [RunbookParameterResponse].
  /// [defaultValue] Gets or sets the default value of parameter.
  /// [isMandatory] Gets or sets a Boolean value to indicate whether the parameter is mandatory or not.
  /// [position] Get or sets the position of the parameter.
  /// [type] Gets or sets the type of the parameter.
  const RunbookParameterResponse({
    this.defaultValue,
    this.isMandatory,
    this.position,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'isMandatory': ?isMandatory,
      'position': ?position,
      'type': ?type,
    };
  }

  factory RunbookParameterResponse.fromMap(Map<String, dynamic> map) {
    return RunbookParameterResponse(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isMandatory: (() { final guardedValue = map['isMandatory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
