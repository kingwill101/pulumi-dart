// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetGroupHealthUnhealthyStateRouting {
  /// The minimum number of targets that must be healthy. If the number of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `1` to the maximum number of targets. The default is `1`.
  final int? minimumHealthyTargetsCount;

  /// The minimum percentage of targets that must be healthy. If the percentage of healthy targets is below this value, send traffic to all targets, including unhealthy targets. The possible values are `off` or an integer from `1` to `100`. The default is `off`.
  final String? minimumHealthyTargetsPercentage;

  TargetGroupTargetGroupHealthUnhealthyStateRouting({
    this.minimumHealthyTargetsCount,
    this.minimumHealthyTargetsPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumHealthyTargetsCountValue = minimumHealthyTargetsCount;
    if (minimumHealthyTargetsCountValue != null) {
      map['minimumHealthyTargetsCount'] = minimumHealthyTargetsCountValue;
    }
    final minimumHealthyTargetsPercentageValue =
        minimumHealthyTargetsPercentage;
    if (minimumHealthyTargetsPercentageValue != null) {
      map['minimumHealthyTargetsPercentage'] =
          minimumHealthyTargetsPercentageValue;
    }
    return map;
  }

  factory TargetGroupTargetGroupHealthUnhealthyStateRouting.fromMap(
      Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealthUnhealthyStateRouting(
      minimumHealthyTargetsCount: map['minimumHealthyTargetsCount'] == null
          ? null
          : map['minimumHealthyTargetsCount'] as int,
      minimumHealthyTargetsPercentage:
          map['minimumHealthyTargetsPercentage'] == null
              ? null
              : map['minimumHealthyTargetsPercentage'] as String,
    );
  }
}
