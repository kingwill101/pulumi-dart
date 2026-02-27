// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroupLb {
  /// ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  final String arn;
  final int weight;

  GetListenerDefaultActionForwardTargetGroupLb({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroupLb.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroupLb(
      arn: map['arn'] as String,
      weight: map['weight'] as int,
    );
  }
}
