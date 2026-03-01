// ignore_for_file: unused_element, unnecessary_cast

class RegionResizeRequestRequestedRunDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 600 to 604800 inclusive. Note: minimum and maximum allowed range for requestedRunDuration is 10 minutes (600 seconds) and 7 days(604800 seconds) correspondingly.
  final String seconds;

  /// Creates a new [RegionResizeRequestRequestedRunDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive.
  /// [seconds] Span of time at a resolution of a second. Must be from 600 to 604800 inclusive. Note: minimum and maximum allowed range for requestedRunDuration is 10 minutes (600 seconds) and 7 days(604800 seconds) correspondingly.
  RegionResizeRequestRequestedRunDuration({this.nanos, required this.seconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': ?nanos, 'seconds': seconds};
  }

  factory RegionResizeRequestRequestedRunDuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionResizeRequestRequestedRunDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as String,
    );
  }
}
