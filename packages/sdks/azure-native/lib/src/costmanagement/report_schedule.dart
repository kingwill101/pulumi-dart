// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_recurrence_period.dart';

/// The schedule associated with a report.
class ReportSchedule {
  /// The schedule recurrence.
  final pulumi.Input<String> recurrence;

  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final pulumi.Input<ReportRecurrencePeriod>? recurrencePeriod;

  /// The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
  final pulumi.Input<String>? status;

  /// Creates a new [ReportSchedule].
  /// [recurrence] The schedule recurrence.
  /// [recurrencePeriod] Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  /// [status] The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
  ReportSchedule({
    required this.recurrence,
    this.recurrencePeriod,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': recurrence,
      'recurrencePeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ReportRecurrencePeriod,
            Map<String, dynamic>
          >(recurrencePeriod, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ReportSchedule.fromMap(Map<String, dynamic> map) {
    return ReportSchedule(
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      recurrencePeriod: (() {
        final guardedValue = map['recurrencePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportRecurrencePeriod.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
