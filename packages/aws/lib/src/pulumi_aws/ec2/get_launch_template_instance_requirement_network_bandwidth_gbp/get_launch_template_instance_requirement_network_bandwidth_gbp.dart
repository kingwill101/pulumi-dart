// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp {
  final double max;
  final double min;

  GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
