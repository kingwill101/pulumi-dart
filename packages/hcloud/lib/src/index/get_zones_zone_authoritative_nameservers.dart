// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZoneAuthoritativeNameservers {
  /// Authoritative Hetzner nameservers assigned to the Zone.
  final List<String> assigneds;

  /// Creates a new [GetZonesZoneAuthoritativeNameservers].
  /// [assigneds] Authoritative Hetzner nameservers assigned to the Zone.
  GetZonesZoneAuthoritativeNameservers({
    required this.assigneds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneds': assigneds,
    };
  }

  factory GetZonesZoneAuthoritativeNameservers.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneAuthoritativeNameservers(
      assigneds: (map['assigneds'] as List).cast<String>(),
    );
  }
}

