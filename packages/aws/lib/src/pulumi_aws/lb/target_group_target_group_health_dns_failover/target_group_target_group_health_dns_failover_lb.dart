// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetGroupHealthDnsFailoverLb {
  /// The minimum number of targets that must be healthy. If the number of healthy targets is below this value, mark the zone as unhealthy in DNS, so that traffic is routed only to healthy zones. The possible values are `off` or an integer from `1` to the maximum number of targets. The default is `off`.
  final String? minimumHealthyTargetsCount;

  /// The minimum percentage of targets that must be healthy. If the percentage of healthy targets is below this value, mark the zone as unhealthy in DNS, so that traffic is routed only to healthy zones. The possible values are `off` or an integer from `1` to `100`. The default is `off`.
  final String? minimumHealthyTargetsPercentage;

  TargetGroupTargetGroupHealthDnsFailoverLb({
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

  factory TargetGroupTargetGroupHealthDnsFailoverLb.fromMap(
      Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealthDnsFailoverLb(
      minimumHealthyTargetsCount: map['minimumHealthyTargetsCount'] == null
          ? null
          : map['minimumHealthyTargetsCount'] as String,
      minimumHealthyTargetsPercentage:
          map['minimumHealthyTargetsPercentage'] == null
              ? null
              : map['minimumHealthyTargetsPercentage'] as String,
    );
  }
}
