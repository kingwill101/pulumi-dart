// ignore_for_file: unused_element, unnecessary_cast


/// The time for a scaling action to occur.
class TimeResponse {
  /// The hour.
  final int hour;
  /// The minute.
  final int minute;

  /// Creates a new [TimeResponse].
  /// [hour] The hour.
  /// [minute] The minute.
  TimeResponse({
    required this.hour,
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': minute,
    };
  }

  factory TimeResponse.fromMap(Map<String, dynamic> map) {
    return TimeResponse(
      hour: map['hour'] as int,
      minute: map['minute'] as int,
    );
  }
}

