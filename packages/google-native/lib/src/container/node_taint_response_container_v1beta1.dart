// ignore_for_file: unused_element, unnecessary_cast

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintResponseContainerV1beta1 {
  /// Effect for taint.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  /// Creates a new [NodeTaintResponseContainerV1beta1].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  NodeTaintResponseContainerV1beta1({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory NodeTaintResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponseContainerV1beta1(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
