// ignore_for_file: unused_element, unnecessary_cast

class DistributionLocation {
  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  final String availabilityZone;

  /// AWS Region name.
  final String regionName;

  DistributionLocation({
    required this.availabilityZone,
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    map['regionName'] = regionName;
    return map;
  }

  factory DistributionLocation.fromMap(Map<String, dynamic> map) {
    return DistributionLocation(
      availabilityZone: map['availabilityZone'] as String,
      regionName: map['regionName'] as String,
    );
  }
}
