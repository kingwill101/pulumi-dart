// ignore_for_file: unused_element, unnecessary_cast


class TransferJobScheduleStartTimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final int hours;
  /// Minutes of hour of day. Must be from 0 to 59.
  final int minutes;
  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final int nanos;
  /// Seconds of minutes of the time. Must normally be from 0 to 59.
  final int seconds;

  /// Creates a new [TransferJobScheduleStartTimeOfDay].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59.
  TransferJobScheduleStartTimeOfDay({
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

  factory TransferJobScheduleStartTimeOfDay.fromMap(Map<String, dynamic> map) {
    return TransferJobScheduleStartTimeOfDay(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}

