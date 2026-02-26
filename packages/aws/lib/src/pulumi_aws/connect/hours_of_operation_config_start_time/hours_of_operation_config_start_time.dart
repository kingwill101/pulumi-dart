// ignore_for_file: unused_element, unnecessary_cast

class HoursOfOperationConfigStartTime {
  /// Specifies the hour of opening.
  final int hours;

  /// Specifies the minute of opening.
  final int minutes;

  HoursOfOperationConfigStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

  factory HoursOfOperationConfigStartTime.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfigStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
