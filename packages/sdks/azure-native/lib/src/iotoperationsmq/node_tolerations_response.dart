// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Node Tolerations details
class NodeTolerationsResponse {
  /// Toleration effect.
  final pulumi.Input<String> effect;
  /// Toleration key.
  final pulumi.Input<String> key;
  /// Toleration operator like 'Exists', 'Equal' etc.
  final pulumi.Input<String> operator;
  /// Toleration Value.
  final pulumi.Input<String> value;

  /// Creates a new [NodeTolerationsResponse].
  /// [effect] Toleration effect.
  /// [key] Toleration key.
  /// [operator] Toleration operator like 'Exists', 'Equal' etc.
  /// [value] Toleration Value.
  const NodeTolerationsResponse({
    required this.effect,
    required this.key,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'operator': operator,
      'value': value,
    };
  }

  factory NodeTolerationsResponse.fromMap(Map<String, dynamic> map) {
    return NodeTolerationsResponse(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
