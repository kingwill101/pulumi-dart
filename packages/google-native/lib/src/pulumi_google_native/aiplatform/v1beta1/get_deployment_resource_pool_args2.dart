// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeploymentResourcePool.
class GetDeploymentResourcePoolArgs2 {
  final Input<String> deploymentResourcePoolId;
  final Input<String> location;
  final Input<String>? project;

  GetDeploymentResourcePoolArgs2({
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

  factory GetDeploymentResourcePoolArgs2.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolArgs2(
      deploymentResourcePoolId:
          Input.asInput<String>(map['deploymentResourcePoolId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
