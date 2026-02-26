import 'package:pulumi/pulumi.dart';
import 'deployment_resource_pool_args2.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';

/// Create a DeploymentResourcePool.
class DeploymentResourcePool2 extends CustomResource {
  /// Timestamp when this DeploymentResourcePool was created.
  late final Output<String> createTime;

  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  late final Output<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>
      dedicatedResources;
  late final Output<String> location;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  late final Output<String> name;
  late final Output<String> project;

  DeploymentResourcePool2(
    String name, {
    DeploymentResourcePoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:DeploymentResourcePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dedicatedResources = Output.createUnknown<
        GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
