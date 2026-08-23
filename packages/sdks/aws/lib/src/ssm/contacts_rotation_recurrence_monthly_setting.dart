// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_monthly_setting_hand_off_time.dart';

class ContactsRotationRecurrenceMonthlySetting {
  /// (Required) The day of the month when monthly recurring on-call rotations begin.
  final pulumi.Input<int> dayOfMonth;
  /// (Required) The hand off time. See Hand Off Time for more details.
  final pulumi.Input<ContactsRotationRecurrenceMonthlySettingHandOffTime>? handOffTime;

  /// Creates a new [ContactsRotationRecurrenceMonthlySetting].
  /// [dayOfMonth] (Required) The day of the month when monthly recurring on-call rotations begin.
  /// [handOffTime] (Required) The hand off time. See Hand Off Time for more details.
  const ContactsRotationRecurrenceMonthlySetting({
    required this.dayOfMonth,
    this.handOffTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'handOffTime': ?pulumi.Input.mapOptionalInputValue<ContactsRotationRecurrenceMonthlySettingHandOffTime, Map<String, dynamic>>(handOffTime, (value) => value.toMap()),
    };
  }

  factory ContactsRotationRecurrenceMonthlySetting.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceMonthlySetting(
      dayOfMonth: pulumi.Input.fromValue(map['dayOfMonth'] as int),
      handOffTime: (() { final guardedValue = map['handOffTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
