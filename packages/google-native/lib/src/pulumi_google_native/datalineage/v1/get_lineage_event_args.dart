// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLineageEvent.
class GetLineageEventArgs {
  final pulumi.Input<String> lineageEventId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;

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
      lineageEventId: pulumi.Input.asInput<String>(map['lineageEventId']),
      location: pulumi.Input.asInput<String>(map['location']),
      processId: pulumi.Input.asInput<String>(map['processId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runId: pulumi.Input.asInput<String>(map['runId']),
    );
  }
}
