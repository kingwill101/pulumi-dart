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
  NodeTolerationsResponse({
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
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

