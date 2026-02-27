import 'package:pulumi/pulumi.dart';
import '../agentcore_agent_runtime_endpoint_timeouts/agentcore_agent_runtime_endpoint_timeouts.dart';
import 'agentcore_agent_runtime_endpoint_args.dart';

/// Manages an AWS Bedrock AgentCore Agent Runtime Endpoint. Agent Runtime Endpoints provide a network-accessible interface for interacting with agent runtimes, enabling external systems to communicate with and invoke agent capabilities.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime Endpoint using the `agent_runtime_id` and `name` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint example AGENTRUNTIME1234567890,example-endpoint
/// ```
class AgentcoreAgentRuntimeEndpoint extends CustomResource {
  /// ARN of the associated Agent Runtime.
  late final Output<String> agentRuntimeArn;

  /// ARN of the Agent Runtime Endpoint.
  late final Output<String> agentRuntimeEndpointArn;

  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  late final Output<String> agentRuntimeId;

  /// Version of the agent runtime to use for this endpoint.
  late final Output<String> agentRuntimeVersion;

  /// Description of the agent runtime endpoint.
  late final Output<String?> description;

  /// Name of the agent runtime endpoint.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreAgentRuntimeEndpointTimeouts?> timeouts;

  AgentcoreAgentRuntimeEndpoint(
    String name, {
    AgentcoreAgentRuntimeEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    this.agentRuntimeEndpointArn =
        registerOutput<String>('agentRuntimeEndpointArn');
    this.agentRuntimeId = registerOutput<String>('agentRuntimeId');
    this.agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<AgentcoreAgentRuntimeEndpointTimeouts?>('timeouts');
  }
}
