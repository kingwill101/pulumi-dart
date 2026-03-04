// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_recurrence_period.dart';

/// The schedule associated with the export.
class ExportSchedule {
  /// The schedule recurrence.
  final pulumi.Input<String>? recurrence;

  /// Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  final pulumi.Input<ExportRecurrencePeriod>? recurrencePeriod;

  /// The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  final pulumi.Input<String>? status;

  /// Creates a new [ExportSchedule].
  /// [recurrence] The schedule recurrence.
  /// [recurrencePeriod] Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date.
  /// [status] The status of the export's schedule. If 'Inactive', the export's schedule is paused.
  ExportSchedule({this.recurrence, this.recurrencePeriod, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence,
      'recurrencePeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ExportRecurrencePeriod,
            Map<String, dynamic>
          >(recurrencePeriod, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ExportSchedule.fromMap(Map<String, dynamic> map) {
    return ExportSchedule(
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recurrencePeriod: (() {
        final guardedValue = map['recurrencePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExportRecurrencePeriod.fromMap(
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
