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
  ClusterParameter({
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
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

