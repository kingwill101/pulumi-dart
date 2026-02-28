// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationResponseComputeBeta {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String zone;

  /// Creates a new [DistributionPolicyZoneConfigurationResponseComputeBeta].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationResponseComputeBeta({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory DistributionPolicyZoneConfigurationResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponseComputeBeta(
      zone: map['zone'] as String,
    );
  }
}
