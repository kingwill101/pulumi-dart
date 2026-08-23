// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetGroupTuple
class TargetGroupTupleResponse {
  /// The Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String>? targetGroupArn;
  /// The weight. The range is 0 to 999.
  final pulumi.Input<int>? weight;

  /// Creates a new [TargetGroupTupleResponse].
  /// [targetGroupArn] The Amazon Resource Name (ARN) of the target group.
  /// [weight] The weight. The range is 0 to 999.
  const TargetGroupTupleResponse({
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
      targetGroupArn: (() { final guardedValue = map['targetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
