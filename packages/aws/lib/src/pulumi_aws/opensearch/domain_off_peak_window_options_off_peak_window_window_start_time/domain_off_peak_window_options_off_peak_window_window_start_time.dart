// ignore_for_file: unused_element, unnecessary_cast

class DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final int? hours;

  /// Starting minute of the 10-hour window for updates
  final int? minutes;

  DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    this.hours,
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hoursValue = hours;
    if (hoursValue != null) {
      map['hours'] = hoursValue;
    }
    final minutesValue = minutes;
    if (minutesValue != null) {
      map['minutes'] = minutesValue;
    }
    return map;
  }

  factory DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
    );
  }
}
