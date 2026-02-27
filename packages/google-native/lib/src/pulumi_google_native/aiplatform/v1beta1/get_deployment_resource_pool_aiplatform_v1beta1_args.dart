// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeploymentResourcePool.
class GetDeploymentResourcePoolAiplatformV1beta1Args {
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDeploymentResourcePoolAiplatformV1beta1Args({
    required this.deploymentResourcePoolId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deploymentResourcePoolId'] = deploymentResourcePoolId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentResourcePoolAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDeploymentResourcePoolAiplatformV1beta1Args(
      deploymentResourcePoolId:
          pulumi.Input.asInput<String>(map['deploymentResourcePoolId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
