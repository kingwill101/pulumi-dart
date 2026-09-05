// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_daily_setting.dart';
import 'contacts_rotation_recurrence_monthly_setting.dart';
import 'contacts_rotation_recurrence_shift_coverage.dart';
import 'contacts_rotation_recurrence_weekly_setting.dart';

class ContactsRotationRecurrence {
  final pulumi.Input<List<ContactsRotationRecurrenceDailySetting>?>? dailySettings;
  /// (Optional) Information about on-call rotations that recur monthly. See Monthly Settings for more details.
  final pulumi.Input<List<ContactsRotationRecurrenceMonthlySetting>?>? monthlySettings;
  /// (Required) The number of contacts, or shift team members designated to be on call concurrently during a shift.
  final pulumi.Input<int> numberOfOnCalls;
  /// (Required) The number of days, weeks, or months a single rotation lasts.
  final pulumi.Input<int> recurrenceMultiplier;
  /// (Optional) Information about the days of the week that the on-call rotation coverage includes. See Shift Coverages for more details.
  final pulumi.Input<List<ContactsRotationRecurrenceShiftCoverage>?>? shiftCoverages;
  /// (Optional) Information about on-call rotations that recur weekly. See Weekly Settings for more details.
  final pulumi.Input<List<ContactsRotationRecurrenceWeeklySetting>?>? weeklySettings;

  /// Creates a new [ContactsRotationRecurrence].
  /// [dailySettings] Optional.
  /// [monthlySettings] (Optional) Information about on-call rotations that recur monthly. See Monthly Settings for more details.
  /// [numberOfOnCalls] (Required) The number of contacts, or shift team members designated to be on call concurrently during a shift.
  /// [recurrenceMultiplier] (Required) The number of days, weeks, or months a single rotation lasts.
  /// [shiftCoverages] (Optional) Information about the days of the week that the on-call rotation coverage includes. See Shift Coverages for more details.
  /// [weeklySettings] (Optional) Information about on-call rotations that recur weekly. See Weekly Settings for more details.
  const ContactsRotationRecurrence({
    this.dailySettings,
    this.monthlySettings,
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    this.shiftCoverages,
    this.weeklySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySettings': ?pulumi.Input.mapOptionalInputValue<List<ContactsRotationRecurrenceDailySetting>, List<Map<String, dynamic>>>(dailySettings, (value) => pulumi.Input.encodeList<ContactsRotationRecurrenceDailySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlySettings': ?pulumi.Input.mapOptionalInputValue<List<ContactsRotationRecurrenceMonthlySetting>, List<Map<String, dynamic>>>(monthlySettings, (value) => pulumi.Input.encodeList<ContactsRotationRecurrenceMonthlySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberOfOnCalls': numberOfOnCalls,
      'recurrenceMultiplier': recurrenceMultiplier,
      'shiftCoverages': ?pulumi.Input.mapOptionalInputValue<List<ContactsRotationRecurrenceShiftCoverage>, List<Map<String, dynamic>>>(shiftCoverages, (value) => pulumi.Input.encodeList<ContactsRotationRecurrenceShiftCoverage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklySettings': ?pulumi.Input.mapOptionalInputValue<List<ContactsRotationRecurrenceWeeklySetting>, List<Map<String, dynamic>>>(weeklySettings, (value) => pulumi.Input.encodeList<ContactsRotationRecurrenceWeeklySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrence(
      dailySettings: (() { final guardedValue = map['dailySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactsRotationRecurrenceDailySetting>(guardedValue, (value) => ContactsRotationRecurrenceDailySetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlySettings: (() { final guardedValue = map['monthlySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactsRotationRecurrenceMonthlySetting>(guardedValue, (value) => ContactsRotationRecurrenceMonthlySetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberOfOnCalls: pulumi.Input.fromValue((map['numberOfOnCalls'] as num).toInt()),
      recurrenceMultiplier: pulumi.Input.fromValue((map['recurrenceMultiplier'] as num).toInt()),
      shiftCoverages: (() { final guardedValue = map['shiftCoverages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactsRotationRecurrenceShiftCoverage>(guardedValue, (value) => ContactsRotationRecurrenceShiftCoverage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weeklySettings: (() { final guardedValue = map['weeklySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactsRotationRecurrenceWeeklySetting>(guardedValue, (value) => ContactsRotationRecurrenceWeeklySetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
