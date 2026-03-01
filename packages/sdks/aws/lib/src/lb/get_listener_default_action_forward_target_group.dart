// ignore_for_file: unused_element, unnecessary_cast


class GetListenerDefaultActionForwardTargetGroup {
  /// ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  final String arn;
  final int weight;

  /// Creates a new [GetListenerDefaultActionForwardTargetGroup].
  /// [arn] ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  /// [weight] Required.
  GetListenerDefaultActionForwardTargetGroup({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': weight,
    };
  }

  factory GetListenerDefaultActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup(
      arn: map['arn'] as String,
      weight: map['weight'] as int,
    );
  }
}

