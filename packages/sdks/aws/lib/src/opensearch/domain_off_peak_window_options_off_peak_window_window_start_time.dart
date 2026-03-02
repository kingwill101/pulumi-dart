// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final pulumi.Input<int>? hours;
  /// Starting minute of the 10-hour window for updates
  final pulumi.Input<int>? minutes;

  /// Creates a new [DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime].
  /// [hours] Starting hour of the 10-hour window for updates
  /// [minutes] Starting minute of the 10-hour window for updates
  DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    this.hours,
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
    };
  }

  factory DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime(
      hours: map['hours'] == null ? null : ((map['hours'] as int).input()).input(),
      minutes: map['minutes'] == null ? null : ((map['minutes'] as int).input()).input(),
    );
  }
}

