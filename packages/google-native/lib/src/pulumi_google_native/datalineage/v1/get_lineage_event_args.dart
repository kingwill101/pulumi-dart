// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLineageEvent.
class GetLineageEventArgs {
  final Input<String> lineageEventId;
  final Input<String> location;
  final Input<String> processId;
  final Input<String>? project;
  final Input<String> runId;

  GetLineageEventArgs({
    required this.lineageEventId,
    required this.location,
    required this.processId,
    this.project,
    required this.runId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lineageEventId'] = lineageEventId;
    map['location'] = location;
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runId'] = runId;
    return map;
  }

  factory GetLineageEventArgs.fromMap(Map<String, dynamic> map) {
    return GetLineageEventArgs(
      lineageEventId: Input.asInput<String>(map['lineageEventId']),
      location: Input.asInput<String>(map['location']),
      processId: Input.asInput<String>(map['processId']),
      project: Input.asOptionalInput<String>(map['project']),
      runId: Input.asInput<String>(map['runId']),
    );
  }
}
