// ignore_for_file: unused_element, unnecessary_cast


/// Start and end times for a build execution phase.
class TimeSpanResponse {
  /// End of time span.
  final String endTime;
  /// Start of time span.
  final String startTime;

  /// Creates a new [TimeSpanResponse].
  /// [endTime] End of time span.
  /// [startTime] Start of time span.
  TimeSpanResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory TimeSpanResponse.fromMap(Map<String, dynamic> map) {
    return TimeSpanResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

