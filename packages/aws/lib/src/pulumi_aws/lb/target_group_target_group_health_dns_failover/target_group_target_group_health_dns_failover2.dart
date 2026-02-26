// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetGroupHealthDnsFailover2 {
  /// The minimum number of targets that must be healthy. If the number of healthy targets is below this value, mark the zone as unhealthy in DNS, so that traffic is routed only to healthy zones. The possible values are <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span> or an integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to the maximum number of targets. The default is <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  final String? minimumHealthyTargetsCount;

  /// The minimum percentage of targets that must be healthy. If the percentage of healthy targets is below this value, mark the zone as unhealthy in DNS, so that traffic is routed only to healthy zones. The possible values are <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span> or an integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>. The default is <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  final String? minimumHealthyTargetsPercentage;

  TargetGroupTargetGroupHealthDnsFailover2({
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

  factory TargetGroupTargetGroupHealthDnsFailover2.fromMap(
      Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealthDnsFailover2(
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
