// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOccurrence.
class GetOccurrenceArgs {
  final Input<String> occurrenceId;
  final Input<String>? project;

  GetOccurrenceArgs({
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

  factory GetOccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceArgs(
      occurrenceId: Input.asInput<String>(map['occurrenceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
