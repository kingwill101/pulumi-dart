// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_weekly_setting_hand_off_time.dart';

class GetContactsRotationRecurrenceWeeklySetting {
  final String dayOfWeek;
  final List<GetContactsRotationRecurrenceWeeklySettingHandOffTime>
      handOffTimes;

  /// Creates a new [GetContactsRotationRecurrenceWeeklySetting].
  /// [dayOfWeek] Required.
  /// [handOffTimes] Required.
  GetContactsRotationRecurrenceWeeklySetting({
    required this.dayOfWeek,
    required this.handOffTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['handOffTimes'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceWeeklySettingHandOffTime,
        Map<String, dynamic>>(handOffTimes, (value) => value.toMap());
    return map;
  }

  factory GetContactsRotationRecurrenceWeeklySetting.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceWeeklySetting(
      dayOfWeek: map['dayOfWeek'] as String,
      handOffTimes: pulumi.Input.decodeList<
              GetContactsRotationRecurrenceWeeklySettingHandOffTime>(
          map['handOffTimes'],
          (value) =>
              GetContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
