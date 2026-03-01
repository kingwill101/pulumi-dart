// ignore_for_file: unused_element, unnecessary_cast

/// Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDayResponse {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  final int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  final int seconds;

  /// Creates a new [TimeOfDayResponse].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  TimeOfDayResponse({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'nanos': nanos,
      'seconds': seconds,
    };
  }

  factory TimeOfDayResponse.fromMap(Map<String, dynamic> map) {
    return TimeOfDayResponse(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
