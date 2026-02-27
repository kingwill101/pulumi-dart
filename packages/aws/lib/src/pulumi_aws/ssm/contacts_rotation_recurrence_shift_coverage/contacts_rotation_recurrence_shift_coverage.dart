// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../contacts_rotation_recurrence_shift_coverage_coverage_time/contacts_rotation_recurrence_shift_coverage_coverage_time.dart';

class ContactsRotationRecurrenceShiftCoverage {
  /// (Required) Information about when an on-call shift begins and ends. See Coverage Times for more details.
  final List<ContactsRotationRecurrenceShiftCoverageCoverageTime> coverageTimes;
  final String mapBlockKey;

  ContactsRotationRecurrenceShiftCoverage({
    required this.coverageTimes,
    required this.mapBlockKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coverageTimes'] = pulumi.Input.encodeList<
        ContactsRotationRecurrenceShiftCoverageCoverageTime,
        Map<String, dynamic>>(coverageTimes, (value) => value.toMap());
    map['mapBlockKey'] = mapBlockKey;
    return map;
  }

  factory ContactsRotationRecurrenceShiftCoverage.fromMap(
      Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverage(
      coverageTimes: pulumi.Input.decodeList<
              ContactsRotationRecurrenceShiftCoverageCoverageTime>(
          map['coverageTimes'],
          (value) =>
              ContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mapBlockKey: map['mapBlockKey'] as String,
    );
  }
}
