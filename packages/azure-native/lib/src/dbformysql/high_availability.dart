// ignore_for_file: unused_element, unnecessary_cast


/// High availability properties of a server
class HighAvailability {
  /// High availability mode for a server.
  final String? mode;
  /// Availability zone of the standby server.
  final String? standbyAvailabilityZone;

  /// Creates a new [HighAvailability].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone of the standby server.
  HighAvailability({
    this.mode,
    this.standbyAvailabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
    };
  }

  factory HighAvailability.fromMap(Map<String, dynamic> map) {
    return HighAvailability(
      mode: map['mode'] == null ? null : map['mode'] as String,
      standbyAvailabilityZone: map['standbyAvailabilityZone'] == null ? null : map['standbyAvailabilityZone'] as String,
    );
  }
}

