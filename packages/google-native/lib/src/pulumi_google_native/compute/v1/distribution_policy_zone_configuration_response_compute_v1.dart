// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationResponseComputeV1 {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String zone;

  DistributionPolicyZoneConfigurationResponseComputeV1({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory DistributionPolicyZoneConfigurationResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponseComputeV1(
      zone: map['zone'] as String,
    );
  }
}
