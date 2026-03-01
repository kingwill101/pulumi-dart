// ignore_for_file: unused_element, unnecessary_cast


class DomainClockTimerCatchUp {
  /// Specifies the limit for how much time the guest clock can catch up in one adjustment.
  final double? limit;
  /// Sets the rate at which the clock can be adjusted to catch up lost time.
  final double? slew;
  /// Defines the time difference threshold at which catch-up adjustments are triggered.
  final double? threshold;

  /// Creates a new [DomainClockTimerCatchUp].
  /// [limit] Specifies the limit for how much time the guest clock can catch up in one adjustment.
  /// [slew] Sets the rate at which the clock can be adjusted to catch up lost time.
  /// [threshold] Defines the time difference threshold at which catch-up adjustments are triggered.
  DomainClockTimerCatchUp({
    this.limit,
    this.slew,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'slew': ?slew,
      'threshold': ?threshold,
    };
  }

  factory DomainClockTimerCatchUp.fromMap(Map<String, dynamic> map) {
    return DomainClockTimerCatchUp(
      limit: map['limit'] == null ? null : map['limit'] as double,
      slew: map['slew'] == null ? null : map['slew'] as double,
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
    );
  }
}

