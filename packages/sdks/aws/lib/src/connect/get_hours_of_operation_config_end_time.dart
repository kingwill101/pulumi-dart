// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoursOfOperationConfigEndTime {
  /// Hour of opening.
  final pulumi.Input<int> hours;
  /// Minute of opening.
  final pulumi.Input<int> minutes;

  /// Creates a new [GetHoursOfOperationConfigEndTime].
  /// [hours] Hour of opening.
  /// [minutes] Minute of opening.
  GetHoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetHoursOfOperationConfigEndTime.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfigEndTime(
      hours: (map['hours'] as int).input(),
      minutes: (map['minutes'] as int).input(),
    );
  }
}

