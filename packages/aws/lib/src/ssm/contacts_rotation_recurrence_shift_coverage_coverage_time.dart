// ignore_for_file: unused_element, unnecessary_cast

import 'contacts_rotation_recurrence_shift_coverage_coverage_time_end.dart';
import 'contacts_rotation_recurrence_shift_coverage_coverage_time_start.dart';

class ContactsRotationRecurrenceShiftCoverageCoverageTime {
  /// (Required) The end time of the on-call shift. See Hand Off Time for more details.
  final ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd? end;

  /// (Required) The start time of the on-call shift. See Hand Off Time for more details.
  final ContactsRotationRecurrenceShiftCoverageCoverageTimeStart? start;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverageCoverageTime].
  /// [end] (Required) The end time of the on-call shift. See Hand Off Time for more details.
  /// [start] (Required) The start time of the on-call shift. See Hand Off Time for more details.
  ContactsRotationRecurrenceShiftCoverageCoverageTime({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue.toMap();
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue.toMap();
    }
    return map;
  }

  factory ContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap(
      Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverageCoverageTime(
      end: map['end'] == null
          ? null
          : ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap(
              (map['end'] as Map).cast<String, dynamic>()),
      start: map['start'] == null
          ? null
          : ContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(
              (map['start'] as Map).cast<String, dynamic>()),
    );
  }
}
