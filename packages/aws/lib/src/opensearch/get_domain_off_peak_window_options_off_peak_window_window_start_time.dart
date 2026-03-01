// ignore_for_file: unused_element, unnecessary_cast

class GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final int hours;

  /// Starting minute of the 10-hour window for updates
  final int minutes;

  /// Creates a new [GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime].
  /// [hours] Starting hour of the 10-hour window for updates
  /// [minutes] Starting minute of the 10-hour window for updates
  GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hours': hours, 'minutes': minutes};
  }

  factory GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
    );
  }
}
