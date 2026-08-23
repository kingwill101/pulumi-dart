// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence_shift_coverage_coverage_time.dart';

class ContactsRotationRecurrenceShiftCoverage {
  /// (Required) Information about when an on-call shift begins and ends. See Coverage Times for more details.
  final pulumi.Input<List<ContactsRotationRecurrenceShiftCoverageCoverageTime>> coverageTimes;
  final pulumi.Input<String> mapBlockKey;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverage].
  /// [coverageTimes] (Required) Information about when an on-call shift begins and ends. See Coverage Times for more details.
  /// [mapBlockKey] Required.
  const ContactsRotationRecurrenceShiftCoverage({
    required this.coverageTimes,
    required this.mapBlockKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coverageTimes': pulumi.Input.mapInputValue<List<ContactsRotationRecurrenceShiftCoverageCoverageTime>, List<Map<String, dynamic>>>(coverageTimes, (value) => pulumi.Input.encodeList<ContactsRotationRecurrenceShiftCoverageCoverageTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mapBlockKey': mapBlockKey,
    };
  }

  factory ContactsRotationRecurrenceShiftCoverage.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverage(
      coverageTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<ContactsRotationRecurrenceShiftCoverageCoverageTime>(map['coverageTimes']!, (value) => ContactsRotationRecurrenceShiftCoverageCoverageTime.fromMap((value as Map).cast<String, dynamic>()))),
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
    );
  }
}
