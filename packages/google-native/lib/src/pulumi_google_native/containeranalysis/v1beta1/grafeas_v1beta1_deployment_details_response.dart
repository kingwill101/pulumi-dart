// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_response_containeranalysis_v1beta1.dart';

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetailsResponse {
  /// Deployment history for the resource.
  final DeploymentResponseContaineranalysisV1beta1 deployment;

  GrafeasV1beta1DeploymentDetailsResponse({
    required this.deployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment.toMap();
    return map;
  }

  factory GrafeasV1beta1DeploymentDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1beta1DeploymentDetailsResponse(
      deployment: DeploymentResponseContaineranalysisV1beta1.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
    );
  }
}
