// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence_shift_coverage_coverage_time.dart';

class GetContactsRotationRecurrenceShiftCoverage {
  final pulumi.Input<List<GetContactsRotationRecurrenceShiftCoverageCoverageTime>> coverageTimes;
  final pulumi.Input<String> mapBlockKey;

  /// Creates a new [GetContactsRotationRecurrenceShiftCoverage].
  /// [coverageTimes] Required.
  /// [mapBlockKey] Required.
  GetContactsRotationRecurrenceShiftCoverage({
    required this.coverageTimes,
    required this.mapBlockKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coverageTimes': pulumi.Input.mapInputValue<List<GetContactsRotationRecurrenceShiftCoverageCoverageTime>, List<Map<String, dynamic>>>(coverageTimes, (value) => pulumi.Input.encodeList<GetContactsRotationRecurrenceShiftCoverageCoverageTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mapBlockKey': mapBlockKey,
    };
  }

  factory GetContactsRotationRecurrenceShiftCoverage.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverage(
      coverageTimes: (pulumi.Input.decodeList<GetContactsRotationRecurrenceShiftCoverageCoverageTime>(map['coverageTimes'], (value) => GetContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mapBlockKey: (map['mapBlockKey'] as String).input(),
    );
  }
}

