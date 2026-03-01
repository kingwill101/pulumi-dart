// ignore_for_file: unused_element, unnecessary_cast

class HoursOfOperationConfigStartTime {
  /// Specifies the hour of opening.
  final int hours;

  /// Specifies the minute of opening.
  final int minutes;

  /// Creates a new [HoursOfOperationConfigStartTime].
  /// [hours] Specifies the hour of opening.
  /// [minutes] Specifies the minute of opening.
  HoursOfOperationConfigStartTime({required this.hours, required this.minutes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hours': hours, 'minutes': minutes};
  }

  factory HoursOfOperationConfigStartTime.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfigStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
