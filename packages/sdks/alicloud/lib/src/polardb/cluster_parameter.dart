// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterParameter {
  /// Kernel parameter name.
  final pulumi.Input<String> name;
  /// Kernel parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [ClusterParameter].
  /// [name] Kernel parameter name.
  /// [value] Kernel parameter value.
  const ClusterParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ClusterParameter.fromMap(Map<String, dynamic> map) {
    return ClusterParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

