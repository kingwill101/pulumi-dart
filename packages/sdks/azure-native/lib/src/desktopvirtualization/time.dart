// ignore_for_file: unused_element, unnecessary_cast


/// The time for a scaling action to occur.
class Time {
  /// The hour.
  final int hour;
  /// The minute.
  final int minute;

  /// Creates a new [Time].
  /// [hour] The hour.
  /// [minute] The minute.
  Time({
    required this.hour,
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': minute,
    };
  }

  factory Time.fromMap(Map<String, dynamic> map) {
    return Time(
      hour: map['hour'] as int,
      minute: map['minute'] as int,
    );
  }
}

