// ignore_for_file: unused_element, unnecessary_cast

class GetHoursOfOperationConfigStartTime {
  /// Hour of opening.
  final int hours;

  /// Minute of opening.
  final int minutes;

  /// Creates a new [GetHoursOfOperationConfigStartTime].
  /// [hours] Hour of opening.
  /// [minutes] Minute of opening.
  GetHoursOfOperationConfigStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

  factory GetHoursOfOperationConfigStartTime.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfigStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
