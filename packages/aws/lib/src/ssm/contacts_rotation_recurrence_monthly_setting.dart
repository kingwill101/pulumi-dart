// ignore_for_file: unused_element, unnecessary_cast

import 'contacts_rotation_recurrence_monthly_setting_hand_off_time.dart';

class ContactsRotationRecurrenceMonthlySetting {
  /// (Required) The day of the month when monthly recurring on-call rotations begin.
  final int dayOfMonth;
  /// (Required) The hand off time. See Hand Off Time for more details.
  final ContactsRotationRecurrenceMonthlySettingHandOffTime? handOffTime;

  /// Creates a new [ContactsRotationRecurrenceMonthlySetting].
  /// [dayOfMonth] (Required) The day of the month when monthly recurring on-call rotations begin.
  /// [handOffTime] (Required) The hand off time. See Hand Off Time for more details.
  ContactsRotationRecurrenceMonthlySetting({
    required this.dayOfMonth,
    this.handOffTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'handOffTime': ?handOffTime == null ? null : handOffTime!.toMap(),
    };
  }

  factory ContactsRotationRecurrenceMonthlySetting.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceMonthlySetting(
      dayOfMonth: map['dayOfMonth'] as int,
      handOffTime: map['handOffTime'] == null ? null : ContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap((map['handOffTime'] as Map).cast<String, dynamic>()),
    );
  }
}

