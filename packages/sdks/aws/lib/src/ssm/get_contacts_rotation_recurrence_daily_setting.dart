// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactsRotationRecurrenceDailySetting {
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceDailySetting].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  const GetContactsRotationRecurrenceDailySetting({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceDailySetting.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceDailySetting(
      hourOfDay: pulumi.Input.fromValue((map['hourOfDay'] as num).toInt()),
      minuteOfHour: pulumi.Input.fromValue((map['minuteOfHour'] as num).toInt()),
    );
  }
}
