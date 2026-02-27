// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroup2 {
  /// ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  final String arn;
  final int weight;

  GetListenerDefaultActionForwardTargetGroup2({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroup2.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup2(
      arn: map['arn'] as String,
      weight: map['weight'] as int,
    );
  }
}
