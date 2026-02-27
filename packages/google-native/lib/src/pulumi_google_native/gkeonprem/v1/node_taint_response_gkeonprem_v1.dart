// ignore_for_file: unused_element, unnecessary_cast

/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaintResponseGkeonpremV1 {
  /// The taint effect.
  final String effect;

  /// Key associated with the effect.
  final String key;

  /// Value associated with the effect.
  final String value;

  NodeTaintResponseGkeonpremV1({
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

  factory NodeTaintResponseGkeonpremV1.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponseGkeonpremV1(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
