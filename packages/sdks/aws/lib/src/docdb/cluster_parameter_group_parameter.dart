// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterParameterGroupParameter {
  /// Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  final pulumi.Input<String>? applyMethod;
  /// The name of the DocumentDB parameter.
  final pulumi.Input<String> name;
  /// The value of the DocumentDB parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ClusterParameterGroupParameter].
  /// [applyMethod] Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  /// [name] The name of the DocumentDB parameter.
  /// [value] The value of the DocumentDB parameter.
  ClusterParameterGroupParameter({
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

  factory ClusterParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupParameter(
      applyMethod: map['applyMethod'] == null ? null : (map['applyMethod'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

