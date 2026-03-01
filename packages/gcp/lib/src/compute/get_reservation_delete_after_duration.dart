// ignore_for_file: unused_element, unnecessary_cast

class GetReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final int nanos;

  /// Number of seconds for the auto-delete duration.
  final String seconds;

  /// Creates a new [GetReservationDeleteAfterDuration].
  /// [nanos] Number of nanoseconds for the auto-delete duration.
  /// [seconds] Number of seconds for the auto-delete duration.
  GetReservationDeleteAfterDuration({
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': nanos, 'seconds': seconds};
  }

  factory GetReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return GetReservationDeleteAfterDuration(
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as String,
    );
  }
}
