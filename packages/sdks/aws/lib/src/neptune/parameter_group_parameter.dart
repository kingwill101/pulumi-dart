// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParameterGroupParameter {
  /// The apply method of the Neptune parameter. Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  final pulumi.Input<String>? applyMethod;
  /// The name of the Neptune parameter.
  final pulumi.Input<String> name;
  /// The value of the Neptune parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ParameterGroupParameter].
  /// [applyMethod] The apply method of the Neptune parameter. Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  /// [name] The name of the Neptune parameter.
  /// [value] The value of the Neptune parameter.
  ParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyMethod': ?applyMethod,
      'name': name,
      'value': value,
    };
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      applyMethod: map['applyMethod'] == null ? null : (map['applyMethod'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

