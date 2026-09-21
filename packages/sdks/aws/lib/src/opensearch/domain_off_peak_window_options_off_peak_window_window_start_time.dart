// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final pulumi.Input<int?>? hours;
  /// Starting minute of the 10-hour window for updates
  final pulumi.Input<int?>? minutes;

  /// Creates a new [DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime].
  /// [hours] Starting hour of the 10-hour window for updates
  /// [minutes] Starting minute of the 10-hour window for updates
  const DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
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
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
