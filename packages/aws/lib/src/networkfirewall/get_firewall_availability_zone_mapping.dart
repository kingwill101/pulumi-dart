// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located.
  final String availabilityZoneId;

  /// Creates a new [GetFirewallAvailabilityZoneMapping].
  /// [availabilityZoneId] The ID of the Availability Zone where the firewall endpoint is located.
  GetFirewallAvailabilityZoneMapping({required this.availabilityZoneId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityZoneId': availabilityZoneId};
  }

  factory GetFirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetFirewallAvailabilityZoneMapping(
      availabilityZoneId: map['availabilityZoneId'] as String,
    );
  }
}
