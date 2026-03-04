// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactsRotationRecurrenceDailySetting {
  /// (Required) The hour of the day.
  final pulumi.Input<int> hourOfDay;

  /// (Required) The minutes of the hour.
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [ContactsRotationRecurrenceDailySetting].
  /// [hourOfDay] (Required) The hour of the day.
  /// [minuteOfHour] (Required) The minutes of the hour.
  ContactsRotationRecurrenceDailySetting({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory ContactsRotationRecurrenceDailySetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContactsRotationRecurrenceDailySetting(
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      minuteOfHour: pulumi.Input.fromValue(map['minuteOfHour'] as int),
    );
  }
}
