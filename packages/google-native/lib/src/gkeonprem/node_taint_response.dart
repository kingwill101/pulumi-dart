// ignore_for_file: unused_element, unnecessary_cast


/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaintResponse {
  /// The taint effect.
  final String effect;
  /// Key associated with the effect.
  final String key;
  /// Value associated with the effect.
  final String value;

  /// Creates a new [NodeTaintResponse].
  /// [effect] The taint effect.
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  NodeTaintResponse({
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

  factory NodeTaintResponse.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponse(
      effect: map['effect'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

