// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRoutine.
class GetRoutineArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;
  final pulumi.Input<String> routineId;

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
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readMask: pulumi.Input.asOptionalInput<String>(map['readMask']),
      routineId: pulumi.Input.asInput<String>(map['routineId']),
    );
  }
}
