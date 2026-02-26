// ignore_for_file: unused_element, unnecessary_cast

class LandingZoneDriftStatus {
  /// The drift status of the landing zone.
  final String? status;

  LandingZoneDriftStatus({
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory LandingZoneDriftStatus.fromMap(Map<String, dynamic> map) {
    return LandingZoneDriftStatus(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
