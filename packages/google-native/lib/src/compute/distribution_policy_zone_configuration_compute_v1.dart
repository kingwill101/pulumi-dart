// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationComputeV1 {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String? zone;

  /// Creates a new [DistributionPolicyZoneConfigurationComputeV1].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationComputeV1({this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'zone': ?zone};
  }

  factory DistributionPolicyZoneConfigurationComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionPolicyZoneConfigurationComputeV1(
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
