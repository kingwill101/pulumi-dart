// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_daily_setting.dart';
import 'get_contacts_rotation_recurrence_monthly_setting.dart';
import 'get_contacts_rotation_recurrence_shift_coverage.dart';
import 'get_contacts_rotation_recurrence_weekly_setting.dart';

class GetContactsRotationRecurrence {
  final pulumi.Input<List<GetContactsRotationRecurrenceDailySetting>> dailySettings;
  final pulumi.Input<List<GetContactsRotationRecurrenceMonthlySetting>> monthlySettings;
  final pulumi.Input<int> numberOfOnCalls;
  final pulumi.Input<int> recurrenceMultiplier;
  final pulumi.Input<List<GetContactsRotationRecurrenceShiftCoverage>> shiftCoverages;
  final pulumi.Input<List<GetContactsRotationRecurrenceWeeklySetting>> weeklySettings;

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
      'dailySettings': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceDailySetting>, List<Map<String, dynamic>>>(dailySettings, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceDailySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlySettings': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceMonthlySetting>, List<Map<String, dynamic>>>(monthlySettings, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceMonthlySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberOfOnCalls': numberOfOnCalls,
      'recurrenceMultiplier': recurrenceMultiplier,
      'shiftCoverages': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceShiftCoverage>, List<Map<String, dynamic>>>(shiftCoverages, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceShiftCoverage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklySettings': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceWeeklySetting>, List<Map<String, dynamic>>>(weeklySettings, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceWeeklySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrence(
      dailySettings: (pulumi.Input.decodeList<GetContactsRotationRecurrenceDailySetting>(map['dailySettings']!, (value) => GetContactsRotationRecurrenceDailySetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      monthlySettings: (pulumi.Input.decodeList<GetContactsRotationRecurrenceMonthlySetting>(map['monthlySettings']!, (value) => GetContactsRotationRecurrenceMonthlySetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberOfOnCalls: (map['numberOfOnCalls'] as int).input(),
      recurrenceMultiplier: (map['recurrenceMultiplier'] as int).input(),
      shiftCoverages: (pulumi.Input.decodeList<GetContactsRotationRecurrenceShiftCoverage>(map['shiftCoverages']!, (value) => GetContactsRotationRecurrenceShiftCoverage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weeklySettings: (pulumi.Input.decodeList<GetContactsRotationRecurrenceWeeklySetting>(map['weeklySettings']!, (value) => GetContactsRotationRecurrenceWeeklySetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

