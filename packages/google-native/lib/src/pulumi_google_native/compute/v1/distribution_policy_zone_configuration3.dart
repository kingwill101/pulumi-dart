// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfiguration3 {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String? zone;

  DistributionPolicyZoneConfiguration3({
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

  factory DistributionPolicyZoneConfiguration3.fromMap(
      Map<String, dynamic> map) {
    return DistributionPolicyZoneConfiguration3(
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
