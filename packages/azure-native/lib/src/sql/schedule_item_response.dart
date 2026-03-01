// ignore_for_file: unused_element, unnecessary_cast


/// Schedule info describing when the server should be started or stopped.
class ScheduleItemResponse {
  /// Start day.
  final String startDay;
  /// Start time.
  final String startTime;
  /// Stop day.
  final String stopDay;
  /// Stop time.
  final String stopTime;

  /// Creates a new [ScheduleItemResponse].
  /// [startDay] Start day.
  /// [startTime] Start time.
  /// [stopDay] Stop day.
  /// [stopTime] Stop time.
  ScheduleItemResponse({
    required this.startDay,
    required this.startTime,
    required this.stopDay,
    required this.stopTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startDay': startDay,
      'startTime': startTime,
      'stopDay': stopDay,
      'stopTime': stopTime,
    };
  }

  factory ScheduleItemResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleItemResponse(
      startDay: map['startDay'] as String,
      startTime: map['startTime'] as String,
      stopDay: map['stopDay'] as String,
      stopTime: map['stopTime'] as String,
    );
  }
}

