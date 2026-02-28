// ignore_for_file: unused_element, unnecessary_cast

class GetHoursOfOperationConfigEndTime {
  /// Hour of opening.
  final int hours;

  /// Minute of opening.
  final int minutes;

  /// Creates a new [GetHoursOfOperationConfigEndTime].
  /// [hours] Hour of opening.
  /// [minutes] Minute of opening.
  GetHoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

  factory GetHoursOfOperationConfigEndTime.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfigEndTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
