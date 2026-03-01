// ignore_for_file: unused_element, unnecessary_cast

import 'report_recurrence_period_response.dart';

/// The schedule associated with a report.
class ReportScheduleResponse {
  /// The schedule recurrence.
  final String recurrence;
  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final ReportRecurrencePeriodResponse? recurrencePeriod;
  /// The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
  final String? status;

  /// Creates a new [ReportScheduleResponse].
  /// [recurrence] The schedule recurrence.
  /// [recurrencePeriod] Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  /// [status] The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
  ReportScheduleResponse({
    required this.recurrence,
    this.recurrencePeriod,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': recurrence,
      'recurrencePeriod': ?recurrencePeriod == null ? null : recurrencePeriod!.toMap(),
      'status': ?status,
    };
  }

  factory ReportScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ReportScheduleResponse(
      recurrence: map['recurrence'] as String,
      recurrencePeriod: map['recurrencePeriod'] == null ? null : ReportRecurrencePeriodResponse.fromMap((map['recurrencePeriod'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

