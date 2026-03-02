// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_shift_coverage_coverage_time_end.dart';
import 'contacts_rotation_recurrence_shift_coverage_coverage_time_start.dart';

class ContactsRotationRecurrenceShiftCoverageCoverageTime {
  /// (Required) The end time of the on-call shift. See Hand Off Time for more details.
  final pulumi.Input<ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd>? end;
  /// (Required) The start time of the on-call shift. See Hand Off Time for more details.
  final pulumi.Input<ContactsRotationRecurrenceShiftCoverageCoverageTimeStart>? start;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverageCoverageTime].
  /// [end] (Required) The end time of the on-call shift. See Hand Off Time for more details.
  /// [start] (Required) The start time of the on-call shift. See Hand Off Time for more details.
  ContactsRotationRecurrenceShiftCoverageCoverageTime({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?pulumi.Input.mapOptionalInputValue<ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd, Map<String, dynamic>>(end, (value) => value.toMap()),
      'start': ?pulumi.Input.mapOptionalInputValue<ContactsRotationRecurrenceShiftCoverageCoverageTimeStart, Map<String, dynamic>>(start, (value) => value.toMap()),
    };
  }

  factory ContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverageCoverageTime(
      end: map['end'] == null ? null : (ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap((map['end'] as Map).cast<String, dynamic>())).input(),
      start: map['start'] == null ? null : (ContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap((map['start'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

