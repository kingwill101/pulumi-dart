// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfiguration {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String? zone;

  /// Creates a new [DistributionPolicyZoneConfiguration].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfiguration({
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory DistributionPolicyZoneConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DistributionPolicyZoneConfiguration(
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
