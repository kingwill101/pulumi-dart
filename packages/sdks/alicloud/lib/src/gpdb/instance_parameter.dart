// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceParameter {
  /// (Available since v1.231.0) The default value of the parameter.
  final pulumi.Input<String>? defaultValue;
  /// (Available since v1.231.0) Whether to force restart the instance to config the parameter.
  final pulumi.Input<String>? forceRestartInstance;
  /// (Available since v1.231.0) Whether the parameter is changeable.
  final pulumi.Input<String>? isChangeableConfig;
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// (Available since v1.231.0) The optional range of the parameter.
  final pulumi.Input<String>? optionalRange;
  /// (Available since v1.231.0) The description of the parameter.
  final pulumi.Input<String>? parameterDescription;
  /// The value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [InstanceParameter].
  /// [defaultValue] (Available since v1.231.0) The default value of the parameter.
  /// [forceRestartInstance] (Available since v1.231.0) Whether to force restart the instance to config the parameter.
  /// [isChangeableConfig] (Available since v1.231.0) Whether the parameter is changeable.
  /// [name] The name of the parameter.
  /// [optionalRange] (Available since v1.231.0) The optional range of the parameter.
  /// [parameterDescription] (Available since v1.231.0) The description of the parameter.
  /// [value] The value of the parameter.
  const InstanceParameter({
    this.defaultValue,
    this.forceRestartInstance,
    this.isChangeableConfig,
    required this.name,
    this.optionalRange,
    this.parameterDescription,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'forceRestartInstance': ?forceRestartInstance,
      'isChangeableConfig': ?isChangeableConfig,
      'name': name,
      'optionalRange': ?optionalRange,
      'parameterDescription': ?parameterDescription,
      'value': value,
    };
  }

  factory InstanceParameter.fromMap(Map<String, dynamic> map) {
    return InstanceParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceRestartInstance: (() { final guardedValue = map['forceRestartInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isChangeableConfig: (() { final guardedValue = map['isChangeableConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      optionalRange: (() { final guardedValue = map['optionalRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterDescription: (() { final guardedValue = map['parameterDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

