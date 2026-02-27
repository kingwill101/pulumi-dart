// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getModelDeploymentMonitoringJob.
class GetModelDeploymentMonitoringJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelDeploymentMonitoringJobId;
  final pulumi.Input<String>? project;

  GetModelDeploymentMonitoringJobAiplatformV1beta1Args({
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

  factory GetModelDeploymentMonitoringJobAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetModelDeploymentMonitoringJobAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      modelDeploymentMonitoringJobId:
          pulumi.Input.asInput<String>(map['modelDeploymentMonitoringJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
