// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_monthly_setting_hand_off_time.dart';

class GetContactsRotationRecurrenceMonthlySetting {
  final pulumi.Input<int> dayOfMonth;
  final pulumi.Input<List<GetContactsRotationRecurrenceMonthlySettingHandOffTime>> handOffTimes;

  /// Creates a new [GetContactsRotationRecurrenceMonthlySetting].
  /// [dayOfMonth] Required.
  /// [handOffTimes] Required.
  const GetContactsRotationRecurrenceMonthlySetting({
    required this.dayOfMonth,
    required this.handOffTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'handOffTimes': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceMonthlySettingHandOffTime>, List<Map<String, dynamic>>>(handOffTimes, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceMonthlySettingHandOffTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetContactsRotationRecurrenceMonthlySetting.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceMonthlySetting(
      dayOfMonth: pulumi.Input.fromValue((map['dayOfMonth'] as num).toInt()),
      handOffTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContactsRotationRecurrenceMonthlySettingHandOffTime>(map['handOffTimes']!, (value) => GetContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
