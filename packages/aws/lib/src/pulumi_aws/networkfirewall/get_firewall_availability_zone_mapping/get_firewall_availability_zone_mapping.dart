// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located.
  final String availabilityZoneId;

  GetFirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneId'] = availabilityZoneId;
    return map;
  }

  factory GetFirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetFirewallAvailabilityZoneMapping(
      availabilityZoneId: map['availabilityZoneId'] as String,
    );
  }
}
