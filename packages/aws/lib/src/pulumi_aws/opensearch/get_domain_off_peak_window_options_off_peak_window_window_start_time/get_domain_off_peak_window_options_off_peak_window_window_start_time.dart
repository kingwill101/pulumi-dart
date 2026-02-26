// ignore_for_file: unused_element, unnecessary_cast

class GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final int hours;

  /// Starting minute of the 10-hour window for updates
  final int minutes;

  GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

  factory GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
