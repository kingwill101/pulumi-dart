// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_index_endpoint_deployed_index_automatic_resources/ai_index_endpoint_deployed_index_automatic_resources.dart';
import '../ai_index_endpoint_deployed_index_dedicated_resources/ai_index_endpoint_deployed_index_dedicated_resources.dart';
import '../ai_index_endpoint_deployed_index_deployed_index_auth_config/ai_index_endpoint_deployed_index_deployed_index_auth_config.dart';

/// The set of arguments for AiIndexEndpointDeployedIndex.
class AiIndexEndpointDeployedIndexArgs {
  /// A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// Structure is documented below.
  final Input<AiIndexEndpointDeployedIndexAutomaticResources>?
      automaticResources;

  /// A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
  /// Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard.
  /// Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32.
  /// n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// Structure is documented below.
  final Input<AiIndexEndpointDeployedIndexDedicatedResources>?
      dedicatedResources;

  /// If set, the authentication is enabled for the private endpoint.
  /// Structure is documented below.
  final Input<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>?
      deployedIndexAuthConfig;

  /// The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  final Input<String> deployedIndexId;

  /// The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// Creating<span pulumi-lang-nodejs=" deploymentGroups " pulumi-lang-dotnet=" DeploymentGroups " pulumi-lang-go=" deploymentGroups " pulumi-lang-python=" deployment_groups " pulumi-lang-yaml=" deploymentGroups " pulumi-lang-java=" deploymentGroups "> deployment_groups </span>with<span pulumi-lang-nodejs=" reservedIpRanges " pulumi-lang-dotnet=" ReservedIpRanges " pulumi-lang-go=" reservedIpRanges " pulumi-lang-python=" reserved_ip_ranges " pulumi-lang-yaml=" reservedIpRanges " pulumi-lang-java=" reservedIpRanges "> reserved_ip_ranges </span>is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one<span pulumi-lang-nodejs=" deploymentGroup " pulumi-lang-dotnet=" DeploymentGroup " pulumi-lang-go=" deploymentGroup " pulumi-lang-python=" deployment_group " pulumi-lang-yaml=" deploymentGroup " pulumi-lang-java=" deploymentGroup "> deployment_group </span>(except 'default') can only be used with the same<span pulumi-lang-nodejs=" reservedIpRanges " pulumi-lang-dotnet=" ReservedIpRanges " pulumi-lang-go=" reservedIpRanges " pulumi-lang-python=" reserved_ip_ranges " pulumi-lang-yaml=" reservedIpRanges " pulumi-lang-java=" reservedIpRanges "> reserved_ip_ranges </span>which means if the<span pulumi-lang-nodejs=" deploymentGroup " pulumi-lang-dotnet=" DeploymentGroup " pulumi-lang-go=" deploymentGroup " pulumi-lang-python=" deployment_group " pulumi-lang-yaml=" deploymentGroup " pulumi-lang-java=" deploymentGroup "> deployment_group </span>has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. [See the official documentation here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
  /// Note: we only support up to 5 deployment groups (not including 'default').
  final Input<String>? deploymentGroup;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String>? displayName;

  /// If true, private endpoint's access logs are sent to Cloud Logging.
  final Input<bool>? enableAccessLogging;

  /// The name of the Index this is the deployment of.
  final Input<String> index;

  /// Identifies the index endpoint. Must be in the format
  /// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
  final Input<String> indexEndpoint;

  /// The region of the index endpoint deployment. eg us-central1
  final Input<String>? region;

  /// A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  /// If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network.
  /// The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range'].
  /// For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  final Input<List<String>>? reservedIpRanges;

  AiIndexEndpointDeployedIndexArgs({
    this.automaticResources,
    this.dedicatedResources,
    this.deployedIndexAuthConfig,
    required this.deployedIndexId,
    this.deploymentGroup,
    this.displayName,
    this.enableAccessLogging,
    required this.index,
    required this.indexEndpoint,
    this.region,
    this.reservedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticResourcesValue = automaticResources;
    if (automaticResourcesValue != null) {
      map['automaticResources'] = Input.mapOptionalInputValue<
              AiIndexEndpointDeployedIndexAutomaticResources,
              Map<String, dynamic>>(
          automaticResourcesValue, (value) => value.toMap());
    }
    final dedicatedResourcesValue = dedicatedResources;
    if (dedicatedResourcesValue != null) {
      map['dedicatedResources'] = Input.mapOptionalInputValue<
              AiIndexEndpointDeployedIndexDedicatedResources,
              Map<String, dynamic>>(
          dedicatedResourcesValue, (value) => value.toMap());
    }
    final deployedIndexAuthConfigValue = deployedIndexAuthConfig;
    if (deployedIndexAuthConfigValue != null) {
      map['deployedIndexAuthConfig'] = Input.mapOptionalInputValue<
              AiIndexEndpointDeployedIndexDeployedIndexAuthConfig,
              Map<String, dynamic>>(
          deployedIndexAuthConfigValue, (value) => value.toMap());
    }
    map['deployedIndexId'] = deployedIndexId;
    final deploymentGroupValue = deploymentGroup;
    if (deploymentGroupValue != null) {
      map['deploymentGroup'] = deploymentGroupValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enableAccessLoggingValue = enableAccessLogging;
    if (enableAccessLoggingValue != null) {
      map['enableAccessLogging'] = enableAccessLoggingValue;
    }
    map['index'] = index;
    map['indexEndpoint'] = indexEndpoint;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservedIpRangesValue = reservedIpRanges;
    if (reservedIpRangesValue != null) {
      map['reservedIpRanges'] = reservedIpRangesValue;
    }
    return map;
  }

  factory AiIndexEndpointDeployedIndexArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexArgs(
      automaticResources:
          Input.asOptionalInput<AiIndexEndpointDeployedIndexAutomaticResources>(
              map['automaticResources']),
      dedicatedResources:
          Input.asOptionalInput<AiIndexEndpointDeployedIndexDedicatedResources>(
              map['dedicatedResources']),
      deployedIndexAuthConfig: Input.asOptionalInput<
              AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>(
          map['deployedIndexAuthConfig']),
      deployedIndexId: Input.asInput<String>(map['deployedIndexId']),
      deploymentGroup: Input.asOptionalInput<String>(map['deploymentGroup']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enableAccessLogging:
          Input.asOptionalInput<bool>(map['enableAccessLogging']),
      index: Input.asInput<String>(map['index']),
      indexEndpoint: Input.asInput<String>(map['indexEndpoint']),
      region: Input.asOptionalInput<String>(map['region']),
      reservedIpRanges:
          Input.asOptionalInput<List<String>>(map['reservedIpRanges']),
    );
  }
}
