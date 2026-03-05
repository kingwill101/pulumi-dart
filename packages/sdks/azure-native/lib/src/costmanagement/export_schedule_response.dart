// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_recurrence_period_response.dart';

/// The schedule associated with the export.
class ExportScheduleResponse {
  /// The schedule recurrence.
  final pulumi.Input<String>? recurrence;
  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final pulumi.Input<ExportRecurrencePeriodResponse>? recurrencePeriod;
  /// The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  final pulumi.Input<String>? status;

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
      'recurrencePeriod': ?pulumi.Input.mapOptionalInputValue<ExportRecurrencePeriodResponse, Map<String, dynamic>>(recurrencePeriod, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ExportScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ExportScheduleResponse(
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriod: (() { final guardedValue = map['recurrencePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportRecurrencePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

