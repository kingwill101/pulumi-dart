// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupTargetGroupHealthUnhealthyStateRouting {
  /// The minimum number of targets that must be healthy. If the number of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `1` to the maximum number of targets. The default is `1`.
  final pulumi.Input<int>? minimumHealthyTargetsCount;
  /// The minimum percentage of targets that must be healthy. If the percentage of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `off` or an integer from `1` to `100`. The default is `off`.
  final pulumi.Input<String>? minimumHealthyTargetsPercentage;

  /// Creates a new [TargetGroupTargetGroupHealthUnhealthyStateRouting].
  /// [minimumHealthyTargetsCount] The minimum number of targets that must be healthy. If the number of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `1` to the maximum number of targets. The default is `1`.
  /// [minimumHealthyTargetsPercentage] The minimum percentage of targets that must be healthy. If the percentage of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `off` or an integer from `1` to `100`. The default is `off`.
  const TargetGroupTargetGroupHealthUnhealthyStateRouting({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumHealthyTargetsCount': ?minimumHealthyTargetsCount,
      'minimumHealthyTargetsPercentage': ?minimumHealthyTargetsPercentage,
    };
  }

  factory TargetGroupTargetGroupHealthUnhealthyStateRouting.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealthUnhealthyStateRouting(
      minimumHealthyTargetsCount: (() { final guardedValue = map['minimumHealthyTargetsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumHealthyTargetsPercentage: (() { final guardedValue = map['minimumHealthyTargetsPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
