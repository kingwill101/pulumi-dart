// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_monthly_setting_hand_off_time.dart';

class GetContactsRotationRecurrenceMonthlySetting {
  final int dayOfMonth;
  final List<GetContactsRotationRecurrenceMonthlySettingHandOffTime>
      handOffTimes;

  /// Creates a new [GetContactsRotationRecurrenceMonthlySetting].
  /// [dayOfMonth] Required.
  /// [handOffTimes] Required.
  GetContactsRotationRecurrenceMonthlySetting({
    required this.dayOfMonth,
    required this.handOffTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfMonth'] = dayOfMonth;
    map['handOffTimes'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceMonthlySettingHandOffTime,
        Map<String, dynamic>>(handOffTimes, (value) => value.toMap());
    return map;
  }

  factory GetContactsRotationRecurrenceMonthlySetting.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceMonthlySetting(
      dayOfMonth: map['dayOfMonth'] as int,
      handOffTimes: pulumi.Input.decodeList<
              GetContactsRotationRecurrenceMonthlySettingHandOffTime>(
          map['handOffTimes'],
          (value) =>
              GetContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
