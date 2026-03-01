// ignore_for_file: unused_element, unnecessary_cast


class ZoneAuthoritativeNameservers {
  /// Authoritative Hetzner nameservers assigned to the Zone.
  final List<String>? assigneds;

  /// Creates a new [ZoneAuthoritativeNameservers].
  /// [assigneds] Authoritative Hetzner nameservers assigned to the Zone.
  ZoneAuthoritativeNameservers({
    this.assigneds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneds': ?assigneds,
    };
  }

  factory ZoneAuthoritativeNameservers.fromMap(Map<String, dynamic> map) {
    return ZoneAuthoritativeNameservers(
      assigneds: map['assigneds'] == null ? null : (map['assigneds'] as List).cast<String>(),
    );
  }
}

