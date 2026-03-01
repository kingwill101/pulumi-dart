// ignore_for_file: unused_element, unnecessary_cast

import 'export_recurrence_period_response.dart';

/// The schedule associated with the export.
class ExportScheduleResponse {
  /// The schedule recurrence.
  final String? recurrence;
  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final ExportRecurrencePeriodResponse? recurrencePeriod;
  /// The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  final String? status;

  /// Creates a new [ExportScheduleResponse].
  /// [recurrence] The schedule recurrence.
  /// [recurrencePeriod] Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  /// [status] The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  ExportScheduleResponse({
    this.recurrence,
    this.recurrencePeriod,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence,
      'recurrencePeriod': ?recurrencePeriod == null ? null : recurrencePeriod!.toMap(),
      'status': ?status,
    };
  }

  factory ExportScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ExportScheduleResponse(
      recurrence: map['recurrence'] == null ? null : map['recurrence'] as String,
      recurrencePeriod: map['recurrencePeriod'] == null ? null : ExportRecurrencePeriodResponse.fromMap((map['recurrencePeriod'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

