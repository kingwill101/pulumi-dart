// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.
class GoogleTypeTimeOfDayResponse3 {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  final int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  final int seconds;

  GoogleTypeTimeOfDayResponse3({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    map['nanos'] = nanos;
    map['seconds'] = seconds;
    return map;
  }

  factory GoogleTypeTimeOfDayResponse3.fromMap(Map<String, dynamic> map) {
    return GoogleTypeTimeOfDayResponse3(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
