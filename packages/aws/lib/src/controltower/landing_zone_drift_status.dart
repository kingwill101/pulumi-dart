// ignore_for_file: unused_element, unnecessary_cast


class LandingZoneDriftStatus {
  /// The drift status of the landing zone.
  final String? status;

  /// Creates a new [LandingZoneDriftStatus].
  /// [status] The drift status of the landing zone.
  LandingZoneDriftStatus({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory LandingZoneDriftStatus.fromMap(Map<String, dynamic> map) {
    return LandingZoneDriftStatus(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

