// ignore_for_file: unused_element, unnecessary_cast

class ContactsRotationRecurrenceMonthlySettingHandOffTime {
  /// (Required) The hour of the day.
  final int hourOfDay;

  /// (Required) The minutes of the hour.
  final int minuteOfHour;

  ContactsRotationRecurrenceMonthlySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory ContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(
      Map<String, dynamic> map) {
    return ContactsRotationRecurrenceMonthlySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
