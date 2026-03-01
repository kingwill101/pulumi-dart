// ignore_for_file: unused_element, unnecessary_cast


class InstanceParameter {
  /// (Available since v1.231.0) The default value of the parameter.
  final String? defaultValue;
  /// (Available since v1.231.0) Whether to force restart the instance to config the parameter.
  final String? forceRestartInstance;
  /// (Available since v1.231.0) Whether the parameter is changeable.
  final String? isChangeableConfig;
  /// The name of the parameter.
  final String name;
  /// (Available since v1.231.0) The optional range of the parameter.
  final String? optionalRange;
  /// (Available since v1.231.0) The description of the parameter.
  final String? parameterDescription;
  /// The value of the parameter.
  final String value;

  /// Creates a new [InstanceParameter].
  /// [defaultValue] (Available since v1.231.0) The default value of the parameter.
  /// [forceRestartInstance] (Available since v1.231.0) Whether to force restart the instance to config the parameter.
  /// [isChangeableConfig] (Available since v1.231.0) Whether the parameter is changeable.
  /// [name] The name of the parameter.
  /// [optionalRange] (Available since v1.231.0) The optional range of the parameter.
  /// [parameterDescription] (Available since v1.231.0) The description of the parameter.
  /// [value] The value of the parameter.
  InstanceParameter({
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
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      forceRestartInstance: map['forceRestartInstance'] == null ? null : map['forceRestartInstance'] as String,
      isChangeableConfig: map['isChangeableConfig'] == null ? null : map['isChangeableConfig'] as String,
      name: map['name'] as String,
      optionalRange: map['optionalRange'] == null ? null : map['optionalRange'] as String,
      parameterDescription: map['parameterDescription'] == null ? null : map['parameterDescription'] as String,
      value: map['value'] as String,
    );
  }
}

