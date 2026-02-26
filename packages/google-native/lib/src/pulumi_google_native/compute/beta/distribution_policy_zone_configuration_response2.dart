// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationResponse2 {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String zone;

  DistributionPolicyZoneConfigurationResponse2({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory DistributionPolicyZoneConfigurationResponse2.fromMap(
      Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponse2(
      zone: map['zone'] as String,
    );
  }
}
