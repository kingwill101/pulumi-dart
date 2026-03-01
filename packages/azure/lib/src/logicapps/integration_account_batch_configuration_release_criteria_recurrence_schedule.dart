// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria_recurrence_schedule_monthly.dart';

class IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule {
  /// A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered.
  final List<int>? hours;
  /// A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  final List<int>? minutes;
  /// A list of days of the month that the job should execute on.
  final List<int>? monthDays;
  /// A `monthly` block as documented below.
  final List<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly>? monthlies;
  /// A list of days of the week that the job should execute on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final List<String>? weekDays;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule].
  /// [hours] A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered.
  /// [minutes] A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  /// [monthDays] A list of days of the month that the job should execute on.
  /// [monthlies] A `monthly` block as documented below.
  /// [weekDays] A list of days of the week that the job should execute on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule({
    this.hours,
    this.minutes,
    this.monthDays,
    this.monthlies,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'monthDays': ?monthDays,
      'monthlies': ?monthlies == null ? null : pulumi.Input.encodeList<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly, Map<String, dynamic>>(monthlies!, (value) => value.toMap()),
      'weekDays': ?weekDays,
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule(
      hours: map['hours'] == null ? null : (map['hours'] as List).cast<int>(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as List).cast<int>(),
      monthDays: map['monthDays'] == null ? null : (map['monthDays'] as List).cast<int>(),
      monthlies: map['monthlies'] == null ? null : pulumi.Input.decodeList<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly>(map['monthlies'], (value) => IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly.fromMap((value as Map).cast<String, dynamic>())),
      weekDays: map['weekDays'] == null ? null : (map['weekDays'] as List).cast<String>(),
    );
  }
}

