// ignore_for_file: unused_element, unnecessary_cast

class ReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final int? nanos;

  /// Number of seconds for the auto-delete duration.
  final String? seconds;

  ReservationDeleteAfterDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final secondsValue = seconds;
    if (secondsValue != null) {
      map['seconds'] = secondsValue;
    }
    return map;
  }

  factory ReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return ReservationDeleteAfterDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}
