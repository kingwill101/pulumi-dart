// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationComputeBeta {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String? zone;

  /// Creates a new [DistributionPolicyZoneConfigurationComputeBeta].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationComputeBeta({this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'zone': ?zone};
  }

  factory DistributionPolicyZoneConfigurationComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionPolicyZoneConfigurationComputeBeta(
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
