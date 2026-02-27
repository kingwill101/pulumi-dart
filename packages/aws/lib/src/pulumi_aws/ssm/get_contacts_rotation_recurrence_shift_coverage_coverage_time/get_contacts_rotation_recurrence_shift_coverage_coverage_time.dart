// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_contacts_rotation_recurrence_shift_coverage_coverage_time_end/get_contacts_rotation_recurrence_shift_coverage_coverage_time_end.dart';
import '../get_contacts_rotation_recurrence_shift_coverage_coverage_time_start/get_contacts_rotation_recurrence_shift_coverage_coverage_time_start.dart';

class GetContactsRotationRecurrenceShiftCoverageCoverageTime {
  final List<GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd> ends;
  final List<GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart>
      starts;

  GetContactsRotationRecurrenceShiftCoverageCoverageTime({
    required this.ends,
    required this.starts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ends'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd,
        Map<String, dynamic>>(ends, (value) => value.toMap());
    map['starts'] = pulumi.Input.encodeList<
        GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart,
        Map<String, dynamic>>(starts, (value) => value.toMap());
    return map;
  }

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTime(
      ends: pulumi.Input.decodeList<
              GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd>(
          map['ends'],
          (value) =>
              GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      starts: pulumi.Input.decodeList<
              GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart>(
          map['starts'],
          (value) => GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
