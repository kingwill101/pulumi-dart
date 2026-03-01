// ignore_for_file: unused_element, unnecessary_cast


class KubernetesNodePoolTaint {
  /// How the node reacts to pods that it won't tolerate. Available effect values are: "NoSchedule", "PreferNoSchedule", "NoExecute".
  final String effect;
  /// An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  final String key;
  /// An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  final String value;

  /// Creates a new [KubernetesNodePoolTaint].
  /// [effect] How the node reacts to pods that it won't tolerate. Available effect values are: "NoSchedule", "PreferNoSchedule", "NoExecute".
  /// [key] An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  /// [value] An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  KubernetesNodePoolTaint({
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

  factory KubernetesNodePoolTaint.fromMap(Map<String, dynamic> map) {
    return KubernetesNodePoolTaint(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

