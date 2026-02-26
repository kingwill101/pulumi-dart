// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getModelDeploymentMonitoringJob.
class GetModelDeploymentMonitoringJobArgs2 {
  final Input<String> location;
  final Input<String> modelDeploymentMonitoringJobId;
  final Input<String>? project;

  GetModelDeploymentMonitoringJobArgs2({
    required this.location,
    required this.modelDeploymentMonitoringJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['modelDeploymentMonitoringJobId'] = modelDeploymentMonitoringJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelDeploymentMonitoringJobArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetModelDeploymentMonitoringJobArgs2(
      location: Input.asInput<String>(map['location']),
      modelDeploymentMonitoringJobId:
          Input.asInput<String>(map['modelDeploymentMonitoringJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
