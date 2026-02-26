// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkerPool.
class GetWorkerPoolArgs2 {
  final Input<String>? project;
  final Input<String> workerPoolId;

  GetWorkerPoolArgs2({
    this.project,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory GetWorkerPoolArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}
