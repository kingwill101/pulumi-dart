// ignore_for_file: unused_element, unnecessary_cast


class GetZoneAuthoritativeNameservers {
  /// Authoritative Hetzner nameservers assigned to the Zone.
  final List<String> assigneds;

  /// Creates a new [GetZoneAuthoritativeNameservers].
  /// [assigneds] Authoritative Hetzner nameservers assigned to the Zone.
  GetZoneAuthoritativeNameservers({
    required this.assigneds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneds': assigneds,
    };
  }

  factory GetZoneAuthoritativeNameservers.fromMap(Map<String, dynamic> map) {
    return GetZoneAuthoritativeNameservers(
      assigneds: (map['assigneds'] as List).cast<String>(),
    );
  }
}

