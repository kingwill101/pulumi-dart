// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_dedicated_resources.dart';

/// The set of arguments for DeploymentResourcePool.
class DeploymentResourcePoolAiplatformV1beta1Args {
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DedicatedResources>
      dedicatedResources;

  /// The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  DeploymentResourcePoolAiplatformV1beta1Args({
    required this.dedicatedResources,
    required this.deploymentResourcePoolId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dedicatedResources'] = pulumi.Input.mapInputValue<
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

  factory DeploymentResourcePoolAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return DeploymentResourcePoolAiplatformV1beta1Args(
      dedicatedResources:
          pulumi.Input.asInput<GoogleCloudAiplatformV1beta1DedicatedResources>(
              map['dedicatedResources']),
      deploymentResourcePoolId:
          pulumi.Input.asInput<String>(map['deploymentResourcePoolId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
