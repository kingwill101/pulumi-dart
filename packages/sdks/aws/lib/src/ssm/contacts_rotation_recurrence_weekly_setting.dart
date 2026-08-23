// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_weekly_setting_hand_off_time.dart';

class ContactsRotationRecurrenceWeeklySetting {
  /// (Required) The day of the week when the shift coverage occurs.
  final pulumi.Input<String> dayOfWeek;
  /// (Required) The hand off time. See Hand Off Time for more details.
  final pulumi.Input<ContactsRotationRecurrenceWeeklySettingHandOffTime>? handOffTime;

  /// Creates a new [ContactsRotationRecurrenceWeeklySetting].
  /// [dayOfWeek] (Required) The day of the week when the shift coverage occurs.
  /// [handOffTime] (Required) The hand off time. See Hand Off Time for more details.
  const ContactsRotationRecurrenceWeeklySetting({
    required this.dayOfWeek,
    this.handOffTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'handOffTime': ?pulumi.Input.mapOptionalInputValue<ContactsRotationRecurrenceWeeklySettingHandOffTime, Map<String, dynamic>>(handOffTime, (value) => value.toMap()),
    };
  }

  factory ContactsRotationRecurrenceWeeklySetting.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceWeeklySetting(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      handOffTime: (() { final guardedValue = map['handOffTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
