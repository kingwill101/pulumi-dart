import 'package:pulumi/pulumi.dart';
import '../ai_index_endpoint_deployed_index_automatic_resources/ai_index_endpoint_deployed_index_automatic_resources.dart';
import '../ai_index_endpoint_deployed_index_dedicated_resources/ai_index_endpoint_deployed_index_dedicated_resources.dart';
import '../ai_index_endpoint_deployed_index_deployed_index_auth_config/ai_index_endpoint_deployed_index_deployed_index_auth_config.dart';
import '../ai_index_endpoint_deployed_index_private_endpoint/ai_index_endpoint_deployed_index_private_endpoint.dart';
import 'ai_index_endpoint_deployed_index_args.dart';

/// An endpoint indexes are deployed into. An index endpoint can have multiple deployed indexes.
///
///
/// To get more information about IndexEndpointDeployedIndex, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex)
///
/// ## Example Usage
///
/// ### Vertex Ai Index Endpoint Deployed Index Basic
///
///
///
/// ### Vertex Ai Index Endpoint Deployed Index Basic Two
///
///
///
///
/// ## Import
///
/// IndexEndpointDeployedIndex can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexEndpoints/{{index_endpoint}}/deployedIndex/{{deployed_index_id}}`
///
/// * `{{project}}/{{region}}/{{index_endpoint}}/{{deployed_index_id}}`
///
/// * `{{region}}/{{index_endpoint}}/{{deployed_index_id}}`
///
/// * `{{index_endpoint}}/{{deployed_index_id}}`
///
/// When using the `pulumi import` command, IndexEndpointDeployedIndex can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default projects/{{project}}/locations/{{region}}/indexEndpoints/{{index_endpoint}}/deployedIndex/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{project}}/{{region}}/{{index_endpoint}}/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{region}}/{{index_endpoint}}/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{index_endpoint}}/{{deployed_index_id}}
/// ```
class AiIndexEndpointDeployedIndex extends CustomResource {
  /// A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// Structure is documented below.
  late final Output<AiIndexEndpointDeployedIndexAutomaticResources>
      automaticResources;

  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
  /// Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard.
  /// Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32.
  /// n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// Structure is documented below.
  late final Output<AiIndexEndpointDeployedIndexDedicatedResources?>
      dedicatedResources;

  /// If set, the authentication is enabled for the private endpoint.
  /// Structure is documented below.
  late final Output<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig?>
      deployedIndexAuthConfig;

  /// The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  late final Output<String> deployedIndexId;

  /// The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// Creating deployment_groups with reserved_ip_ranges is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deployment_group (except 'default') can only be used with the same reserved_ip_ranges which means if the deployment_group has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. [See the official documentation here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
  /// Note: we only support up to 5 deployment groups (not including 'default').
  late final Output<String?> deploymentGroup;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String?> displayName;

  /// If true, private endpoint's access logs are sent to Cloud Logging.
  late final Output<bool?> enableAccessLogging;

  /// The name of the Index this is the deployment of.
  late final Output<String> index;

  /// Identifies the index endpoint. Must be in the format
  /// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
  late final Output<String> indexEndpoint;

  /// The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the [Index.update_time](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes#Index.FIELDS.update_time) of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must [list](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.operations/list#google.longrunning.Operations.ListOperations) the operations that are running on the original Index. Only the successfully completed Operations with updateTime equal or before this sync time are contained in this DeployedIndex.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> indexSyncTime;

  /// The name of the DeployedIndex resource.
  late final Output<String> name;

  /// Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if [network](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#IndexEndpoint.FIELDS.network) is configured.
  /// Structure is documented below.
  late final Output<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>
      privateEndpoints;

  /// The region of the index endpoint deployment. eg us-central1
  late final Output<String?> region;

  /// A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  /// If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network.
  /// The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range'].
  /// For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  late final Output<List<String>?> reservedIpRanges;

  AiIndexEndpointDeployedIndex(
    String name, {
    AiIndexEndpointDeployedIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.automaticResources =
        registerOutput<AiIndexEndpointDeployedIndexAutomaticResources>(
            'automaticResources');
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedResources =
        registerOutput<AiIndexEndpointDeployedIndexDedicatedResources?>(
            'dedicatedResources');
    this.deployedIndexAuthConfig =
        registerOutput<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig?>(
            'deployedIndexAuthConfig');
    this.deployedIndexId = registerOutput<String>('deployedIndexId');
    this.deploymentGroup = registerOutput<String?>('deploymentGroup');
    this.displayName = registerOutput<String?>('displayName');
    this.enableAccessLogging = registerOutput<bool?>('enableAccessLogging');
    this.index = registerOutput<String>('index');
    this.indexEndpoint = registerOutput<String>('indexEndpoint');
    this.indexSyncTime = registerOutput<String>('indexSyncTime');
    this.name = registerOutput<String>('name');
    this.privateEndpoints =
        registerOutput<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>(
            'privateEndpoints');
    this.region = registerOutput<String?>('region');
    this.reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges');
  }
}
