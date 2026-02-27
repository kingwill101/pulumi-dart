// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateNetworkPerformanceOptions {
  /// Specify the bandwidth weighting option to boost the associated type of baseline bandwidth. Valid values: `default`, `vpc-1`, `ebs-1`. Default value is `default`. Setting `vpc-1` boosts networking baseline bandwidth and reduces EBS baseline bandwidth. Setting `ebs-1` boosts EBS baseline bandwidth and reduces networking baseline bandwidth. Only supported on select instance types. See [AWS Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-bandwidth-weighting.html) for more information.
  final String? bandwidthWeighting;

  LaunchTemplateNetworkPerformanceOptions({
    this.bandwidthWeighting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthWeightingValue = bandwidthWeighting;
    if (bandwidthWeightingValue != null) {
      map['bandwidthWeighting'] = bandwidthWeightingValue;
    }
    return map;
  }

  factory LaunchTemplateNetworkPerformanceOptions.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateNetworkPerformanceOptions(
      bandwidthWeighting: map['bandwidthWeighting'] == null
          ? null
          : map['bandwidthWeighting'] as String,
    );
  }
}
