// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkerPool.
class GetWorkerPoolRemotebuildexecutionV1alphaArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerpoolId;

  GetWorkerPoolRemotebuildexecutionV1alphaArgs({
    required this.instanceId,
    this.project,
    required this.workerpoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerpoolId'] = workerpoolId;
    return map;
  }

  factory GetWorkerPoolRemotebuildexecutionV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolRemotebuildexecutionV1alphaArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workerpoolId: pulumi.Input.asInput<String>(map['workerpoolId']),
    );
  }
}
