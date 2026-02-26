// ignore_for_file: unused_element, unnecessary_cast

class FirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located..
  final String availabilityZoneId;

  FirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneId'] = availabilityZoneId;
    return map;
  }

  factory FirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return FirewallAvailabilityZoneMapping(
      availabilityZoneId: map['availabilityZoneId'] as String,
    );
  }
}
