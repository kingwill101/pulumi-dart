import 'package:pulumi/pulumi.dart';
import '../agentcore_agent_runtime_agent_runtime_artifact/agentcore_agent_runtime_agent_runtime_artifact.dart';
import '../agentcore_agent_runtime_authorizer_configuration/agentcore_agent_runtime_authorizer_configuration.dart';
import '../agentcore_agent_runtime_lifecycle_configuration/agentcore_agent_runtime_lifecycle_configuration.dart';
import '../agentcore_agent_runtime_network_configuration/agentcore_agent_runtime_network_configuration.dart';
import '../agentcore_agent_runtime_protocol_configuration/agentcore_agent_runtime_protocol_configuration.dart';
import '../agentcore_agent_runtime_request_header_configuration/agentcore_agent_runtime_request_header_configuration.dart';
import '../agentcore_agent_runtime_timeouts/agentcore_agent_runtime_timeouts.dart';
import '../agentcore_agent_runtime_workload_identity_detail/agentcore_agent_runtime_workload_identity_detail.dart';
import 'agentcore_agent_runtime_args.dart';

/// Manages an AWS Bedrock AgentCore Agent Runtime. Agent Runtime provides a containerized execution environment for AI agents.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### MCP Server With Custom JWT Authorizer
///
///
///
/// ### Agent runtime artifact from S3 with Code Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime using `agent_runtime_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime example agent-runtime-12345
/// ```
class AgentcoreAgentRuntime extends CustomResource {
  /// ARN of the Agent Runtime.
  late final Output<String> agentRuntimeArn;

  /// Container artifact configuration. See `agent_runtime_artifact` below.
  late final Output<AgentcoreAgentRuntimeAgentRuntimeArtifact>
      agentRuntimeArtifact;

  /// Unique identifier of the Agent Runtime.
  late final Output<String> agentRuntimeId;

  /// Name of the agent runtime.
  late final Output<String> agentRuntimeName;

  /// Version of the Agent Runtime.
  late final Output<String> agentRuntimeVersion;

  /// Authorization configuration for authenticating incoming requests. See `authorizer_configuration` below.
  late final Output<AgentcoreAgentRuntimeAuthorizerConfiguration?>
      authorizerConfiguration;

  /// Description of the agent runtime.
  late final Output<String?> description;

  /// Map of environment variables to pass to the container.
  late final Output<Map<String, String>?> environmentVariables;

  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycle_configuration` below.
  late final Output<List<AgentcoreAgentRuntimeLifecycleConfiguration>>
      lifecycleConfigurations;

  /// Network configuration for the agent runtime. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  late final Output<AgentcoreAgentRuntimeNetworkConfiguration>
      networkConfiguration;

  /// Protocol configuration for the agent runtime. See `protocol_configuration` below.
  late final Output<AgentcoreAgentRuntimeProtocolConfiguration?>
      protocolConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  late final Output<AgentcoreAgentRuntimeRequestHeaderConfiguration?>
      requestHeaderConfiguration;

  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  late final Output<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreAgentRuntimeTimeouts?> timeouts;

  /// Workload identity details for the agent runtime. See `workload_identity_details` below.
  late final Output<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>
      workloadIdentityDetails;

  AgentcoreAgentRuntime(
    String name, {
    AgentcoreAgentRuntimeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    this.agentRuntimeArtifact =
        registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>(
            'agentRuntimeArtifact');
    this.agentRuntimeId = registerOutput<String>('agentRuntimeId');
    this.agentRuntimeName = registerOutput<String>('agentRuntimeName');
    this.agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    this.authorizerConfiguration =
        registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>(
            'authorizerConfiguration');
    this.description = registerOutput<String?>('description');
    this.environmentVariables =
        registerOutput<Map<String, String>?>('environmentVariables');
    this.lifecycleConfigurations =
        registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>(
            'lifecycleConfigurations');
    this.networkConfiguration =
        registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>(
            'networkConfiguration');
    this.protocolConfiguration =
        registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>(
            'protocolConfiguration');
    this.region = registerOutput<String>('region');
    this.requestHeaderConfiguration =
        registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>(
            'requestHeaderConfiguration');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts');
    this.workloadIdentityDetails =
        registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>(
            'workloadIdentityDetails');
  }
}
