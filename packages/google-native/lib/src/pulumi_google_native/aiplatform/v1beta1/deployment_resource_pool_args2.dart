// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources.dart';

/// The set of arguments for DeploymentResourcePool.
class DeploymentResourcePoolArgs2 {
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final Input<GoogleCloudAiplatformV1beta1DedicatedResources>
      dedicatedResources;

  /// The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final Input<String> deploymentResourcePoolId;
  final Input<String>? location;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final Input<String>? name;
  final Input<String>? project;

  DeploymentResourcePoolArgs2({
    required this.dedicatedResources,
    required this.deploymentResourcePoolId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dedicatedResources'] = Input.mapInputValue<
        GoogleCloudAiplatformV1beta1DedicatedResources,
        Map<String, dynamic>>(dedicatedResources, (value) => value.toMap());
    map['deploymentResourcePoolId'] = deploymentResourcePoolId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DeploymentResourcePoolArgs2.fromMap(Map<String, dynamic> map) {
    return DeploymentResourcePoolArgs2(
      dedicatedResources:
          Input.asInput<GoogleCloudAiplatformV1beta1DedicatedResources>(
              map['dedicatedResources']),
      deploymentResourcePoolId:
          Input.asInput<String>(map['deploymentResourcePoolId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
