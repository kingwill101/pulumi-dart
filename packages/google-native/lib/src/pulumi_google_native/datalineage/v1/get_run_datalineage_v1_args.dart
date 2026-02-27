// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRun.
class GetRunDatalineageV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;

  GetRunDatalineageV1Args({
    required this.location,
    required this.processId,
    this.project,
    required this.runId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runId'] = runId;
    return map;
  }

  factory GetRunDatalineageV1Args.fromMap(Map<String, dynamic> map) {
    return GetRunDatalineageV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      processId: pulumi.Input.asInput<String>(map['processId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runId: pulumi.Input.asInput<String>(map['runId']),
    );
  }
}
