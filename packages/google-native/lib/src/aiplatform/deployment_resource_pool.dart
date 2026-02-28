import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_resource_pool_args.dart';
import 'google_cloud_aiplatform_v1_dedicated_resources_response.dart';

/// Create a DeploymentResourcePool.
class DeploymentResourcePool extends pulumi.CustomResource {
  /// Timestamp when this DeploymentResourcePool was created.
  late final pulumi.Output<String> createTime;
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  late final pulumi.Output<GoogleCloudAiplatformV1DedicatedResourcesResponse> dedicatedResources;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [DeploymentResourcePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentResourcePool]. {@macro pulumi_aiplatform_v1_deployment_resource_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentResourcePool(
    String name, {
    DeploymentResourcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:DeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedResources = registerOutput<GoogleCloudAiplatformV1DedicatedResourcesResponse>('dedicatedResources');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
