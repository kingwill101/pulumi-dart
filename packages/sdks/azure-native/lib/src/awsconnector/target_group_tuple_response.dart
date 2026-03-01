// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetGroupTuple
class TargetGroupTupleResponse {
  /// The Amazon Resource Name (ARN) of the target group.
  final String? targetGroupArn;
  /// The weight. The range is 0 to 999.
  final int? weight;

  /// Creates a new [TargetGroupTupleResponse].
  /// [targetGroupArn] The Amazon Resource Name (ARN) of the target group.
  /// [weight] The weight. The range is 0 to 999.
  TargetGroupTupleResponse({
    this.targetGroupArn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupArn': ?targetGroupArn,
      'weight': ?weight,
    };
  }

  factory TargetGroupTupleResponse.fromMap(Map<String, dynamic> map) {
    return TargetGroupTupleResponse(
      targetGroupArn: map['targetGroupArn'] == null ? null : map['targetGroupArn'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

