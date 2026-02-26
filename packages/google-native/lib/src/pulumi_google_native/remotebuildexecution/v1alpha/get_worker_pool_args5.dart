// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkerPool.
class GetWorkerPoolArgs5 {
  final Input<String> instanceId;
  final Input<String>? project;
  final Input<String> workerpoolId;

  GetWorkerPoolArgs5({
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

  factory GetWorkerPoolArgs5.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs5(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      workerpoolId: Input.asInput<String>(map['workerpoolId']),
    );
  }
}
