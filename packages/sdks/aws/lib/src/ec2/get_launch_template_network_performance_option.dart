// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateNetworkPerformanceOption {
  final String bandwidthWeighting;

  /// Creates a new [GetLaunchTemplateNetworkPerformanceOption].
  /// [bandwidthWeighting] Required.
  GetLaunchTemplateNetworkPerformanceOption({
    required this.bandwidthWeighting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthWeighting': bandwidthWeighting,
    };
  }

  factory GetLaunchTemplateNetworkPerformanceOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateNetworkPerformanceOption(
      bandwidthWeighting: map['bandwidthWeighting'] as String,
    );
  }
}

