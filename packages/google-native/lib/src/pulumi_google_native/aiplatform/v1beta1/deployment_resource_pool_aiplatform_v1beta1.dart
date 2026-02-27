import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_resource_pool_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';

/// Create a DeploymentResourcePool.
class DeploymentResourcePoolAiplatformV1beta1 extends pulumi.CustomResource {
  /// Timestamp when this DeploymentResourcePool was created.
  late final pulumi.Output<String> createTime;

  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  late final pulumi
      .Output<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>
      dedicatedResources;
  late final pulumi.Output<String> location;

  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  DeploymentResourcePoolAiplatformV1beta1(
    String name, {
    DeploymentResourcePoolAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:DeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedResources =
        registerOutput<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>(
            'dedicatedResources');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
