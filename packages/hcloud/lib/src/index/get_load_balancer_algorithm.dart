// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerAlgorithm {
  /// (string) Type of the target. `server` or `label_selector`
  final String type;

  /// Creates a new [GetLoadBalancerAlgorithm].
  /// [type] (string) Type of the target. `server` or `label_selector`
  GetLoadBalancerAlgorithm({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetLoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerAlgorithm(
      type: map['type'] as String,
    );
  }
}

