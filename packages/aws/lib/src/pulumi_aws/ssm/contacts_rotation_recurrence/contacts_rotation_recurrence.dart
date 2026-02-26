// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../contacts_rotation_recurrence_daily_setting/contacts_rotation_recurrence_daily_setting.dart';
import '../contacts_rotation_recurrence_monthly_setting/contacts_rotation_recurrence_monthly_setting.dart';
import '../contacts_rotation_recurrence_shift_coverage/contacts_rotation_recurrence_shift_coverage.dart';
import '../contacts_rotation_recurrence_weekly_setting/contacts_rotation_recurrence_weekly_setting.dart';

class ContactsRotationRecurrence {
  final List<ContactsRotationRecurrenceDailySetting>? dailySettings;

  /// (Optional) Information about on-call rotations that recur monthly. See Monthly Settings for more details.
  final List<ContactsRotationRecurrenceMonthlySetting>? monthlySettings;

  /// (Required) The number of contacts, or shift team members designated to be on call concurrently during a shift.
  final int numberOfOnCalls;

  /// (Required) The number of days, weeks, or months a single rotation lasts.
  final int recurrenceMultiplier;

  /// (Optional) Information about the days of the week that the on-call rotation coverage includes. See Shift Coverages for more details.
  final List<ContactsRotationRecurrenceShiftCoverage>? shiftCoverages;

  /// (Optional) Information about on-call rotations that recur weekly. See Weekly Settings for more details.
  final List<ContactsRotationRecurrenceWeeklySetting>? weeklySettings;

  ContactsRotationRecurrence({
    this.dailySettings,
    this.monthlySettings,
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    this.shiftCoverages,
    this.weeklySettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailySettingsValue = dailySettings;
    if (dailySettingsValue != null) {
      map['dailySettings'] = Input.encodeList<
          ContactsRotationRecurrenceDailySetting,
          Map<String, dynamic>>(dailySettingsValue, (value) => value.toMap());
    }
    final monthlySettingsValue = monthlySettings;
    if (monthlySettingsValue != null) {
      map['monthlySettings'] = Input.encodeList<
          ContactsRotationRecurrenceMonthlySetting,
          Map<String, dynamic>>(monthlySettingsValue, (value) => value.toMap());
    }
    map['numberOfOnCalls'] = numberOfOnCalls;
    map['recurrenceMultiplier'] = recurrenceMultiplier;
    final shiftCoveragesValue = shiftCoverages;
    if (shiftCoveragesValue != null) {
      map['shiftCoverages'] = Input.encodeList<
          ContactsRotationRecurrenceShiftCoverage,
          Map<String, dynamic>>(shiftCoveragesValue, (value) => value.toMap());
    }
    final weeklySettingsValue = weeklySettings;
    if (weeklySettingsValue != null) {
      map['weeklySettings'] = Input.encodeList<
          ContactsRotationRecurrenceWeeklySetting,
          Map<String, dynamic>>(weeklySettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrence(
      dailySettings: map['dailySettings'] == null
          ? null
          : Input.decodeList<ContactsRotationRecurrenceDailySetting>(
              map['dailySettings'],
              (value) => ContactsRotationRecurrenceDailySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      monthlySettings: map['monthlySettings'] == null
          ? null
          : Input.decodeList<ContactsRotationRecurrenceMonthlySetting>(
              map['monthlySettings'],
              (value) => ContactsRotationRecurrenceMonthlySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      numberOfOnCalls: map['numberOfOnCalls'] as int,
      recurrenceMultiplier: map['recurrenceMultiplier'] as int,
      shiftCoverages: map['shiftCoverages'] == null
          ? null
          : Input.decodeList<ContactsRotationRecurrenceShiftCoverage>(
              map['shiftCoverages'],
              (value) => ContactsRotationRecurrenceShiftCoverage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      weeklySettings: map['weeklySettings'] == null
          ? null
          : Input.decodeList<ContactsRotationRecurrenceWeeklySetting>(
              map['weeklySettings'],
              (value) => ContactsRotationRecurrenceWeeklySetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
