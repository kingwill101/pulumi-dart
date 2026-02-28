// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_dedicated_resources_response.dart';

/// Result data returned by getDeploymentResourcePool.
class GetDeploymentResourcePoolResult {
  /// Timestamp when this DeploymentResourcePool was created.
  final String createTime;

  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final GoogleCloudAiplatformV1DedicatedResourcesResponse dedicatedResources;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final String name;

  /// Creates a new [GetDeploymentResourcePoolResult].
  /// [createTime] Timestamp when this DeploymentResourcePool was created.
  /// [dedicatedResources] The underlying DedicatedResources that the DeploymentResourcePool uses.
  /// [name] Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  GetDeploymentResourcePoolResult({
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

  factory GetDeploymentResourcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolResult(
      createTime: map['createTime'] as String,
      dedicatedResources:
          GoogleCloudAiplatformV1DedicatedResourcesResponse.fromMap(
              (map['dedicatedResources'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
