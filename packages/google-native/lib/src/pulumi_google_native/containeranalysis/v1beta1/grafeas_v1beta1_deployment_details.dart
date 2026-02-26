// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_type4.dart';

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Deployment history for the resource.
  final DeploymentType4 deployment;

  GrafeasV1beta1DeploymentDetails({
    required this.deployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment.toMap();
    return map;
  }

  factory GrafeasV1beta1DeploymentDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DeploymentDetails(
      deployment: DeploymentType4.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
    );
  }
}
