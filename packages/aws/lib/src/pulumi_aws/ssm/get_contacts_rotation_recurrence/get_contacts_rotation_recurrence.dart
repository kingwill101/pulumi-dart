// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_contacts_rotation_recurrence_daily_setting/get_contacts_rotation_recurrence_daily_setting.dart';
import '../get_contacts_rotation_recurrence_monthly_setting/get_contacts_rotation_recurrence_monthly_setting.dart';
import '../get_contacts_rotation_recurrence_shift_coverage/get_contacts_rotation_recurrence_shift_coverage.dart';
import '../get_contacts_rotation_recurrence_weekly_setting/get_contacts_rotation_recurrence_weekly_setting.dart';

class GetContactsRotationRecurrence {
  final List<GetContactsRotationRecurrenceDailySetting> dailySettings;
  final List<GetContactsRotationRecurrenceMonthlySetting> monthlySettings;
  final int numberOfOnCalls;
  final int recurrenceMultiplier;
  final List<GetContactsRotationRecurrenceShiftCoverage> shiftCoverages;
  final List<GetContactsRotationRecurrenceWeeklySetting> weeklySettings;

  GetContactsRotationRecurrence({
    required this.dailySettings,
    required this.monthlySettings,
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    required this.shiftCoverages,
    required this.weeklySettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailySettings'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceDailySetting,
        Map<String, dynamic>>(dailySettings, (value) => value.toMap());
    map['monthlySettings'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceMonthlySetting,
        Map<String, dynamic>>(monthlySettings, (value) => value.toMap());
    map['numberOfOnCalls'] = numberOfOnCalls;
    map['recurrenceMultiplier'] = recurrenceMultiplier;
    map['shiftCoverages'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceShiftCoverage,
        Map<String, dynamic>>(shiftCoverages, (value) => value.toMap());
    map['weeklySettings'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceWeeklySetting,
        Map<String, dynamic>>(weeklySettings, (value) => value.toMap());
    return map;
  }

  factory GetContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrence(
      dailySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceDailySetting>(
              map['dailySettings'],
              (value) => GetContactsRotationRecurrenceDailySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      monthlySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceMonthlySetting>(
              map['monthlySettings'],
              (value) => GetContactsRotationRecurrenceMonthlySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      numberOfOnCalls: map['numberOfOnCalls'] as int,
      recurrenceMultiplier: map['recurrenceMultiplier'] as int,
      shiftCoverages:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceShiftCoverage>(
              map['shiftCoverages'],
              (value) => GetContactsRotationRecurrenceShiftCoverage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      weeklySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceWeeklySetting>(
              map['weeklySettings'],
              (value) => GetContactsRotationRecurrenceWeeklySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
