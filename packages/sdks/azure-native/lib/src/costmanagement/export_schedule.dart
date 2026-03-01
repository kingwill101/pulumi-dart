// ignore_for_file: unused_element, unnecessary_cast

import 'export_recurrence_period.dart';

/// The schedule associated with the export.
class ExportSchedule {
  /// The schedule recurrence.
  final String? recurrence;
  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final ExportRecurrencePeriod? recurrencePeriod;
  /// The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  final String? status;

  /// Creates a new [ExportSchedule].
  /// [recurrence] The schedule recurrence.
  /// [recurrencePeriod] Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  /// [status] The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  ExportSchedule({
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

  factory ExportSchedule.fromMap(Map<String, dynamic> map) {
    return ExportSchedule(
      recurrence: map['recurrence'] == null ? null : map['recurrence'] as String,
      recurrencePeriod: map['recurrencePeriod'] == null ? null : ExportRecurrencePeriod.fromMap((map['recurrencePeriod'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

