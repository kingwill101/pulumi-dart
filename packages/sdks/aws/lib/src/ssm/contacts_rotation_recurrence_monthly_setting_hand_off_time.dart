// ignore_for_file: unused_element, unnecessary_cast


class ContactsRotationRecurrenceMonthlySettingHandOffTime {
  /// (Required) The hour of the day.
  final int hourOfDay;
  /// (Required) The minutes of the hour.
  final int minuteOfHour;

  /// Creates a new [ContactsRotationRecurrenceMonthlySettingHandOffTime].
  /// [hourOfDay] (Required) The hour of the day.
  /// [minuteOfHour] (Required) The minutes of the hour.
  ContactsRotationRecurrenceMonthlySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory ContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceMonthlySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}

