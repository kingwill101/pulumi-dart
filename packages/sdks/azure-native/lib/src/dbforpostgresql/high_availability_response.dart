// ignore_for_file: unused_element, unnecessary_cast


/// High availability properties of a server.
class HighAvailabilityResponse {
  /// High availability mode for a server.
  final String? mode;
  /// Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  final String? standbyAvailabilityZone;
  /// Possible states of the standby server created when high availability is set to SameZone or ZoneRedundant.
  final String state;

  /// Creates a new [HighAvailabilityResponse].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  /// [state] Possible states of the standby server created when high availability is set to SameZone or ZoneRedundant.
  HighAvailabilityResponse({
    this.mode,
    this.standbyAvailabilityZone,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
      'state': state,
    };
  }

  factory HighAvailabilityResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      standbyAvailabilityZone: map['standbyAvailabilityZone'] == null ? null : map['standbyAvailabilityZone'] as String,
      state: map['state'] as String,
    );
  }
}

