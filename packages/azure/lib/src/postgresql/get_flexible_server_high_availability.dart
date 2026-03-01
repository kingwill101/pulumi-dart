// ignore_for_file: unused_element, unnecessary_cast


class GetFlexibleServerHighAvailability {
  /// The high availability mode of the PostgreSQL Flexible Server.
  final String mode;
  /// The availability zone of the standby Flexible Server.
  final String standbyAvailabilityZone;

  /// Creates a new [GetFlexibleServerHighAvailability].
  /// [mode] The high availability mode of the PostgreSQL Flexible Server.
  /// [standbyAvailabilityZone] The availability zone of the standby Flexible Server.
  GetFlexibleServerHighAvailability({
    required this.mode,
    required this.standbyAvailabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'standbyAvailabilityZone': standbyAvailabilityZone,
    };
  }

  factory GetFlexibleServerHighAvailability.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerHighAvailability(
      mode: map['mode'] as String,
      standbyAvailabilityZone: map['standbyAvailabilityZone'] as String,
    );
  }
}

