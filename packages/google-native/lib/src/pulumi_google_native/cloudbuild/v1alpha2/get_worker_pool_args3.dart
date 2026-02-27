// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkerPool.
class GetWorkerPoolArgs3 {
  final Input<String>? project;
  final Input<String> workerPoolId;

  GetWorkerPoolArgs3({
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

  factory GetWorkerPoolArgs3.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}
