// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkerPool.
class GetWorkerPoolCloudbuildV1alpha1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  GetWorkerPoolCloudbuildV1alpha1Args({
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

  factory GetWorkerPoolCloudbuildV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1alpha1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workerPoolId: pulumi.Input.asInput<String>(map['workerPoolId']),
    );
  }
}
