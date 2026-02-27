// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkerPool.
class GetWorkerPoolArgs4 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workerPoolId;

  GetWorkerPoolArgs4({
    required this.location,
    this.project,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory GetWorkerPoolArgs4.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs4(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}
