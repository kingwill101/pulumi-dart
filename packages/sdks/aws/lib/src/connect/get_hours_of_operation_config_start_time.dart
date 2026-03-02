// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoursOfOperationConfigStartTime {
  /// Hour of opening.
  final pulumi.Input<int> hours;
  /// Minute of opening.
  final pulumi.Input<int> minutes;

  /// Creates a new [GetHoursOfOperationConfigStartTime].
  /// [hours] Hour of opening.
  /// [minutes] Minute of opening.
  GetHoursOfOperationConfigStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetHoursOfOperationConfigStartTime.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfigStartTime(
      hours: (map['hours'] as int).input(),
      minutes: (map['minutes'] as int).input(),
    );
  }
}

