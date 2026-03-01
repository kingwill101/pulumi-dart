// ignore_for_file: unused_element, unnecessary_cast


class NodePoolTaint {
  /// The scheduling policy.
  final String? effect;
  /// The key of a taint.
  final String key;
  /// The value of a taint.
  final String? value;

  /// Creates a new [NodePoolTaint].
  /// [effect] The scheduling policy.
  /// [key] The key of a taint.
  /// [value] The value of a taint.
  NodePoolTaint({
    this.effect,
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': key,
      'value': ?value,
    };
  }

  factory NodePoolTaint.fromMap(Map<String, dynamic> map) {
    return NodePoolTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

