import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_deployment_resource_pool_dedicated_resources/ai_deployment_resource_pool_dedicated_resources.dart';
import 'ai_deployment_resource_pool_args.dart';

/// 'DeploymentResourcePool can be shared by multiple deployed models,
/// whose underlying specification consists of dedicated resources.'
///
///
/// To get more information about DeploymentResourcePool, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.deploymentResourcePools)
///
/// ## Example Usage
///
/// ### Vertex Ai Deployment Resource Pool
///
///
///
///
/// ## Import
///
/// DeploymentResourcePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/deploymentResourcePools/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, DeploymentResourcePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default projects/{{project}}/locations/{{region}}/deploymentResourcePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{name}}
/// ```
class AiDeploymentResourcePool extends pulumi.CustomResource {
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The underlying dedicated resources that the deployment resource pool uses.
  /// Structure is documented below.
  late final pulumi.Output<AiDeploymentResourcePoolDedicatedResources?>
      dedicatedResources;

  /// The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of deployment resource pool. eg us-central1
  late final pulumi.Output<String?> region;

  AiDeploymentResourcePool(
    String name, {
    AiDeploymentResourcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedResources =
        registerOutput<AiDeploymentResourcePoolDedicatedResources?>(
            'dedicatedResources');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
  }
}
