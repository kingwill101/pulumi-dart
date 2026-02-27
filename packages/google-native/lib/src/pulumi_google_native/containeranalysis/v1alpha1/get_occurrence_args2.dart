// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOccurrence.
class GetOccurrenceArgs2 {
  final Input<String> occurrenceId;
  final Input<String>? project;

  GetOccurrenceArgs2({
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['occurrenceId'] = occurrenceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOccurrenceArgs2.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceArgs2(
      occurrenceId: Input.asInput<String>(map['occurrenceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
