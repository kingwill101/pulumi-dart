// ignore_for_file: unused_element, unnecessary_cast


class FirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located..
  final String availabilityZoneId;

  /// Creates a new [FirewallAvailabilityZoneMapping].
  /// [availabilityZoneId] The ID of the Availability Zone where the firewall endpoint is located..
  FirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
    };
  }

  factory FirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return FirewallAvailabilityZoneMapping(
      availabilityZoneId: map['availabilityZoneId'] as String,
    );
  }
}

