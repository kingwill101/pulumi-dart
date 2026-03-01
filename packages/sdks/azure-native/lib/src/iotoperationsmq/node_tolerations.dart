// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Node Tolerations details
class NodeTolerations {
  /// Toleration effect.
  final String effect;
  /// Toleration key.
  final String key;
  /// Toleration operator like 'Exists', 'Equal' etc.
  final String operator;
  /// Toleration Value.
  final String value;

  /// Creates a new [NodeTolerations].
  /// [effect] Toleration effect.
  /// [key] Toleration key.
  /// [operator] Toleration operator like 'Exists', 'Equal' etc.
  /// [value] Toleration Value.
  NodeTolerations({
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

  factory NodeTolerations.fromMap(Map<String, dynamic> map) {
    return NodeTolerations(
      effect: map['effect'] as String,
      key: map['key'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

