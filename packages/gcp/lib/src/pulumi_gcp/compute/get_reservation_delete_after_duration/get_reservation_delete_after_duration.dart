// ignore_for_file: unused_element, unnecessary_cast

class GetReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final int nanos;

  /// Number of seconds for the auto-delete duration.
  final String seconds;

  GetReservationDeleteAfterDuration({
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nanos'] = nanos;
    map['seconds'] = seconds;
    return map;
  }

  factory GetReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return GetReservationDeleteAfterDuration(
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as String,
    );
  }
}
