// ignore_for_file: unused_element, unnecessary_cast


/// Periodic timer event source.
class PeriodicTimerSourceInfoResponse {
  /// Periodic frequency at which timer event needs to be raised. Supports daily, hourly, minutes, and seconds.
  final String schedule;
  /// The time of the day that results in a valid trigger. Schedule is computed with reference to the time specified upto seconds. If timezone is not specified the time will considered to be in device timezone. The value will always be returned as UTC time.
  final String startTime;
  /// Topic where periodic events are published to IoT device.
  final String? topic;

  /// Creates a new [PeriodicTimerSourceInfoResponse].
  /// [schedule] Periodic frequency at which timer event needs to be raised. Supports daily, hourly, minutes, and seconds.
  /// [startTime] The time of the day that results in a valid trigger. Schedule is computed with reference to the time specified upto seconds. If timezone is not specified the time will considered to be in device timezone. The value will always be returned as UTC time.
  /// [topic] Topic where periodic events are published to IoT device.
  PeriodicTimerSourceInfoResponse({
    required this.schedule,
    required this.startTime,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
      'startTime': startTime,
      'topic': ?topic,
    };
  }

  factory PeriodicTimerSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return PeriodicTimerSourceInfoResponse(
      schedule: map['schedule'] as String,
      startTime: map['startTime'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

