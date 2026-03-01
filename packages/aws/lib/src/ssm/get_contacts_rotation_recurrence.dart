// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_daily_setting.dart';
import 'get_contacts_rotation_recurrence_monthly_setting.dart';
import 'get_contacts_rotation_recurrence_shift_coverage.dart';
import 'get_contacts_rotation_recurrence_weekly_setting.dart';

class GetContactsRotationRecurrence {
  final List<GetContactsRotationRecurrenceDailySetting> dailySettings;
  final List<GetContactsRotationRecurrenceMonthlySetting> monthlySettings;
  final int numberOfOnCalls;
  final int recurrenceMultiplier;
  final List<GetContactsRotationRecurrenceShiftCoverage> shiftCoverages;
  final List<GetContactsRotationRecurrenceWeeklySetting> weeklySettings;

  /// Creates a new [GetContactsRotationRecurrence].
  /// [dailySettings] Required.
  /// [monthlySettings] Required.
  /// [numberOfOnCalls] Required.
  /// [recurrenceMultiplier] Required.
  /// [shiftCoverages] Required.
  /// [weeklySettings] Required.
  GetContactsRotationRecurrence({
    required this.dailySettings,
    required this.monthlySettings,
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    required this.shiftCoverages,
    required this.weeklySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySettings':
          pulumi.Input.encodeList<
            GetContactsRotationRecurrenceDailySetting,
            Map<String, dynamic>
          >(dailySettings, (value) => value.toMap()),
      'monthlySettings':
          pulumi.Input.encodeList<
            GetContactsRotationRecurrenceMonthlySetting,
            Map<String, dynamic>
          >(monthlySettings, (value) => value.toMap()),
      'numberOfOnCalls': numberOfOnCalls,
      'recurrenceMultiplier': recurrenceMultiplier,
      'shiftCoverages':
          pulumi.Input.encodeList<
            GetContactsRotationRecurrenceShiftCoverage,
            Map<String, dynamic>
          >(shiftCoverages, (value) => value.toMap()),
      'weeklySettings':
          pulumi.Input.encodeList<
            GetContactsRotationRecurrenceWeeklySetting,
            Map<String, dynamic>
          >(weeklySettings, (value) => value.toMap()),
    };
  }

  factory GetContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrence(
      dailySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceDailySetting>(
            map['dailySettings'],
            (value) => GetContactsRotationRecurrenceDailySetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      monthlySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceMonthlySetting>(
            map['monthlySettings'],
            (value) => GetContactsRotationRecurrenceMonthlySetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      numberOfOnCalls: map['numberOfOnCalls'] as int,
      recurrenceMultiplier: map['recurrenceMultiplier'] as int,
      shiftCoverages:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceShiftCoverage>(
            map['shiftCoverages'],
            (value) => GetContactsRotationRecurrenceShiftCoverage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      weeklySettings:
          pulumi.Input.decodeList<GetContactsRotationRecurrenceWeeklySetting>(
            map['weeklySettings'],
            (value) => GetContactsRotationRecurrenceWeeklySetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
