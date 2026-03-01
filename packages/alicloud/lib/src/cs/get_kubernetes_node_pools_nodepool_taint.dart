// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolTaint {
  /// The scheduling policy.
  final String effect;
  /// The key of a taint.
  final String key;
  /// The value of a taint.
  final String value;

  /// Creates a new [GetKubernetesNodePoolsNodepoolTaint].
  /// [effect] The scheduling policy.
  /// [key] The key of a taint.
  /// [value] The value of a taint.
  GetKubernetesNodePoolsNodepoolTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'value': value,
    };
  }

  factory GetKubernetesNodePoolsNodepoolTaint.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

