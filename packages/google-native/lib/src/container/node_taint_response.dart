// ignore_for_file: unused_element, unnecessary_cast


/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintResponse {
  /// Effect for taint.
  final String effect;
  /// Key for taint.
  final String key;
  /// Value for taint.
  final String value;

  /// Creates a new [NodeTaintResponse].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
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

