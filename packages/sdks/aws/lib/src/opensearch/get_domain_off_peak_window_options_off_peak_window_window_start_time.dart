// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime {
  /// Starting hour of the 10-hour window for updates
  final pulumi.Input<int> hours;
  /// Starting minute of the 10-hour window for updates
  final pulumi.Input<int> minutes;

  /// Creates a new [GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime].
  /// [hours] Starting hour of the 10-hour window for updates
  /// [minutes] Starting minute of the 10-hour window for updates
  const GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
    );
  }
}
