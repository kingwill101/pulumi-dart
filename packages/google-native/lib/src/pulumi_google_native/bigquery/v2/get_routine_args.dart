// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRoutine.
class GetRoutineArgs {
  final Input<String> datasetId;
  final Input<String>? project;
  final Input<String>? readMask;
  final Input<String> routineId;

  GetRoutineArgs({
    required this.datasetId,
    this.project,
    this.readMask,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readMaskValue = readMask;
    if (readMaskValue != null) {
      map['readMask'] = readMaskValue;
    }
    map['routineId'] = routineId;
    return map;
  }

  factory GetRoutineArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutineArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      project: Input.asOptionalInput<String>(map['project']),
      readMask: Input.asOptionalInput<String>(map['readMask']),
      routineId: Input.asInput<String>(map['routineId']),
    );
  }
}
