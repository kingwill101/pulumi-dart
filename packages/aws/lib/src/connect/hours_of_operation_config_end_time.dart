// ignore_for_file: unused_element, unnecessary_cast

class HoursOfOperationConfigEndTime {
  /// Specifies the hour of closing.
  final int hours;

  /// Specifies the minute of closing.
  final int minutes;

  /// Creates a new [HoursOfOperationConfigEndTime].
  /// [hours] Specifies the hour of closing.
  /// [minutes] Specifies the minute of closing.
  HoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

  factory HoursOfOperationConfigEndTime.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfigEndTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
