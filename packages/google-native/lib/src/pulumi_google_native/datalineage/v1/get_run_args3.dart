// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRun.
class GetRunArgs3 {
  final Input<String> location;
  final Input<String> processId;
  final Input<String>? project;
  final Input<String> runId;

  GetRunArgs3({
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

  factory GetRunArgs3.fromMap(Map<String, dynamic> map) {
    return GetRunArgs3(
      location: Input.asInput<String>(map['location']),
      processId: Input.asInput<String>(map['processId']),
      project: Input.asOptionalInput<String>(map['project']),
      runId: Input.asInput<String>(map['runId']),
    );
  }
}
