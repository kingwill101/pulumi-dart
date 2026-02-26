// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_contacts_rotation_recurrence_shift_coverage_coverage_time/get_contacts_rotation_recurrence_shift_coverage_coverage_time.dart';

class GetContactsRotationRecurrenceShiftCoverage {
  final List<GetContactsRotationRecurrenceShiftCoverageCoverageTime>
      coverageTimes;
  final String mapBlockKey;

  GetContactsRotationRecurrenceShiftCoverage({
    required this.coverageTimes,
    required this.mapBlockKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coverageTimes'] = Input.encodeList<
        GetContactsRotationRecurrenceShiftCoverageCoverageTime,
        Map<String, dynamic>>(coverageTimes, (value) => value.toMap());
    map['mapBlockKey'] = mapBlockKey;
    return map;
  }

  factory GetContactsRotationRecurrenceShiftCoverage.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverage(
      coverageTimes: Input.decodeList<
              GetContactsRotationRecurrenceShiftCoverageCoverageTime>(
          map['coverageTimes'],
          (value) =>
              GetContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mapBlockKey: map['mapBlockKey'] as String,
    );
  }
}
