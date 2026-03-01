// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_daily_setting.dart';
import 'contacts_rotation_recurrence_monthly_setting.dart';
import 'contacts_rotation_recurrence_shift_coverage.dart';
import 'contacts_rotation_recurrence_weekly_setting.dart';

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

  /// Creates a new [ContactsRotationRecurrence].
  /// [dailySettings] Optional.
  /// [monthlySettings] (Optional) Information about on-call rotations that recur monthly. See Monthly Settings for more details.
  /// [numberOfOnCalls] (Required) The number of contacts, or shift team members designated to be on call concurrently during a shift.
  /// [recurrenceMultiplier] (Required) The number of days, weeks, or months a single rotation lasts.
  /// [shiftCoverages] (Optional) Information about the days of the week that the on-call rotation coverage includes. See Shift Coverages for more details.
  /// [weeklySettings] (Optional) Information about on-call rotations that recur weekly. See Weekly Settings for more details.
  ContactsRotationRecurrence({
    this.dailySettings,
    this.monthlySettings,
    required this.numberOfOnCalls,
    required this.recurrenceMultiplier,
    this.shiftCoverages,
    this.weeklySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySettings': ?dailySettings == null ? null : pulumi.Input.encodeList<ContactsRotationRecurrenceDailySetting, Map<String, dynamic>>(dailySettings!, (value) => value.toMap()),
      'monthlySettings': ?monthlySettings == null ? null : pulumi.Input.encodeList<ContactsRotationRecurrenceMonthlySetting, Map<String, dynamic>>(monthlySettings!, (value) => value.toMap()),
      'numberOfOnCalls': numberOfOnCalls,
      'recurrenceMultiplier': recurrenceMultiplier,
      'shiftCoverages': ?shiftCoverages == null ? null : pulumi.Input.encodeList<ContactsRotationRecurrenceShiftCoverage, Map<String, dynamic>>(shiftCoverages!, (value) => value.toMap()),
      'weeklySettings': ?weeklySettings == null ? null : pulumi.Input.encodeList<ContactsRotationRecurrenceWeeklySetting, Map<String, dynamic>>(weeklySettings!, (value) => value.toMap()),
    };
  }

  factory ContactsRotationRecurrence.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrence(
      dailySettings: map['dailySettings'] == null ? null : pulumi.Input.decodeList<ContactsRotationRecurrenceDailySetting>(map['dailySettings'], (value) => ContactsRotationRecurrenceDailySetting.fromMap((value as Map).cast<String, dynamic>())),
      monthlySettings: map['monthlySettings'] == null ? null : pulumi.Input.decodeList<ContactsRotationRecurrenceMonthlySetting>(map['monthlySettings'], (value) => ContactsRotationRecurrenceMonthlySetting.fromMap((value as Map).cast<String, dynamic>())),
      numberOfOnCalls: map['numberOfOnCalls'] as int,
      recurrenceMultiplier: map['recurrenceMultiplier'] as int,
      shiftCoverages: map['shiftCoverages'] == null ? null : pulumi.Input.decodeList<ContactsRotationRecurrenceShiftCoverage>(map['shiftCoverages'], (value) => ContactsRotationRecurrenceShiftCoverage.fromMap((value as Map).cast<String, dynamic>())),
      weeklySettings: map['weeklySettings'] == null ? null : pulumi.Input.decodeList<ContactsRotationRecurrenceWeeklySetting>(map['weeklySettings'], (value) => ContactsRotationRecurrenceWeeklySetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

