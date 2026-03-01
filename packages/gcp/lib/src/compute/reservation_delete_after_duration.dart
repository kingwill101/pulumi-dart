// ignore_for_file: unused_element, unnecessary_cast

class ReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final int? nanos;

  /// Number of seconds for the auto-delete duration.
  final String? seconds;

  /// Creates a new [ReservationDeleteAfterDuration].
  /// [nanos] Number of nanoseconds for the auto-delete duration.
  /// [seconds] Number of seconds for the auto-delete duration.
  ReservationDeleteAfterDuration({this.nanos, this.seconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': ?nanos, 'seconds': ?seconds};
  }

  factory ReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return ReservationDeleteAfterDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}
