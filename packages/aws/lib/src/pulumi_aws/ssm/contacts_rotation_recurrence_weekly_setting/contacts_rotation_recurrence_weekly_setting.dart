// ignore_for_file: unused_element, unnecessary_cast

import '../contacts_rotation_recurrence_weekly_setting_hand_off_time/contacts_rotation_recurrence_weekly_setting_hand_off_time.dart';

class ContactsRotationRecurrenceWeeklySetting {
  /// (Required) The day of the week when the shift coverage occurs.
  final String dayOfWeek;

  /// (Required) The hand off time. See Hand Off Time for more details.
  final ContactsRotationRecurrenceWeeklySettingHandOffTime? handOffTime;

  ContactsRotationRecurrenceWeeklySetting({
    required this.dayOfWeek,
    this.handOffTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    final handOffTimeValue = handOffTime;
    if (handOffTimeValue != null) {
      map['handOffTime'] = handOffTimeValue.toMap();
    }
    return map;
  }

  factory ContactsRotationRecurrenceWeeklySetting.fromMap(
      Map<String, dynamic> map) {
    return ContactsRotationRecurrenceWeeklySetting(
      dayOfWeek: map['dayOfWeek'] as String,
      handOffTime: map['handOffTime'] == null
          ? null
          : ContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap(
              (map['handOffTime'] as Map).cast<String, dynamic>()),
    );
  }
}
