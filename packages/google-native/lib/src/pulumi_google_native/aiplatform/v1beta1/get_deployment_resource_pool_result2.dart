// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';

/// Result data returned by getDeploymentResourcePool.
class GetDeploymentResourcePoolResult2 {
  /// Timestamp when this DeploymentResourcePool was created.
  final String createTime;

  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final GoogleCloudAiplatformV1beta1DedicatedResourcesResponse
      dedicatedResources;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final String name;

  GetDeploymentResourcePoolResult2({
    required this.createTime,
    required this.dedicatedResources,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['dedicatedResources'] = dedicatedResources.toMap();
    map['name'] = name;
    return map;
  }

  factory GetDeploymentResourcePoolResult2.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolResult2(
      createTime: map['createTime'] as String,
      dedicatedResources:
          GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap(
              (map['dedicatedResources'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
