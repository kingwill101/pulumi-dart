// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the runbook parameter type.
class RunbookParameterResponse {
  /// Gets or sets the default value of parameter.
  final pulumi.Input<String>? defaultValue;
  /// Gets or sets a Boolean value to indicate whether the parameter is mandatory or not.
  final pulumi.Input<bool>? isMandatory;
  /// Get or sets the position of the parameter.
  final pulumi.Input<int>? position;
  /// Gets or sets the type of the parameter.
  final pulumi.Input<String>? type;

  /// Creates a new [RunbookParameterResponse].
  /// [defaultValue] Gets or sets the default value of parameter.
  /// [isMandatory] Gets or sets a Boolean value to indicate whether the parameter is mandatory or not.
  /// [position] Get or sets the position of the parameter.
  /// [type] Gets or sets the type of the parameter.
  RunbookParameterResponse({
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
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']! as String).input(),
      isMandatory: map['isMandatory'] == null ? null : (map['isMandatory']! as bool).input(),
      position: map['position'] == null ? null : (map['position']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

