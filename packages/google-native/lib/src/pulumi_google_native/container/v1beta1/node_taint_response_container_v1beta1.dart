// ignore_for_file: unused_element, unnecessary_cast

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintResponseContainerV1beta1 {
  /// Effect for taint.
  final String effect;

  /// Key for taint.
  final String key;

  /// Value for taint.
  final String value;

  NodeTaintResponseContainerV1beta1({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['effect'] = effect;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory NodeTaintResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponseContainerV1beta1(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
