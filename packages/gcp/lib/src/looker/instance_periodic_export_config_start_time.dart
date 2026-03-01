// ignore_for_file: unused_element, unnecessary_cast

class InstancePeriodicExportConfigStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final int? hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  final int? minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final int? nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59.
  final int? seconds;

  /// Creates a new [InstancePeriodicExportConfigStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59.
  InstancePeriodicExportConfigStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory InstancePeriodicExportConfigStartTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstancePeriodicExportConfigStartTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
