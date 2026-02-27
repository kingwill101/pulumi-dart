import 'package:pulumi/pulumi.dart';
import '../agent_agent_guardrail_configuration/agent_agent_guardrail_configuration.dart';
import '../agent_agent_memory_configuration/agent_agent_memory_configuration.dart';
import '../agent_agent_prompt_override_configuration/agent_agent_prompt_override_configuration.dart';
import '../agent_agent_timeouts/agent_agent_timeouts.dart';
import 'agent_agent_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent using the agent ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgent:AgentAgent example GGRRAED6JP
/// ```
class AgentAgent extends CustomResource {
  /// ARN of the agent.
  late final Output<String> agentArn;

  /// Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  late final Output<String> agentCollaboration;

  /// Unique identifier of the agent.
  late final Output<String> agentId;

  /// Name of the agent.
  late final Output<String> agentName;

  /// ARN of the IAM role with permissions to invoke API operations on the agent.
  late final Output<String> agentResourceRoleArn;

  /// Version of the agent.
  late final Output<String> agentVersion;

  /// ARN of the AWS KMS key that encrypts the agent.
  late final Output<String?> customerEncryptionKeyArn;

  /// Description of the agent.
  late final Output<String?> description;

  /// Foundation model used for orchestration by the agent.
  ///
  /// The following arguments are optional:
  late final Output<String> foundationModel;

  /// Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  late final Output<List<AgentAgentGuardrailConfiguration>?>
      guardrailConfigurations;

  /// Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  late final Output<int> idleSessionTtlInSeconds;

  /// Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  late final Output<String> instruction;

  /// Configurations for the agent's ability to retain the conversational context.
  late final Output<List<AgentAgentMemoryConfiguration>> memoryConfigurations;

  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  late final Output<bool> prepareAgent;

  /// Timestamp of when the agent was last prepared.
  late final Output<String> preparedAt;

  /// Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  late final Output<List<AgentAgentPromptOverrideConfiguration>>
      promptOverrideConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether the in-use check is skipped when deleting the agent.
  late final Output<bool> skipResourceInUseCheck;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentAgentTimeouts?> timeouts;

  AgentAgent(
    String name, {
    AgentAgentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgent:AgentAgent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentArn = registerOutput<String>('agentArn');
    this.agentCollaboration = registerOutput<String>('agentCollaboration');
    this.agentId = registerOutput<String>('agentId');
    this.agentName = registerOutput<String>('agentName');
    this.agentResourceRoleArn = registerOutput<String>('agentResourceRoleArn');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.customerEncryptionKeyArn =
        registerOutput<String?>('customerEncryptionKeyArn');
    this.description = registerOutput<String?>('description');
    this.foundationModel = registerOutput<String>('foundationModel');
    this.guardrailConfigurations =
        registerOutput<List<AgentAgentGuardrailConfiguration>?>(
            'guardrailConfigurations');
    this.idleSessionTtlInSeconds =
        registerOutput<int>('idleSessionTtlInSeconds');
    this.instruction = registerOutput<String>('instruction');
    this.memoryConfigurations =
        registerOutput<List<AgentAgentMemoryConfiguration>>(
            'memoryConfigurations');
    this.prepareAgent = registerOutput<bool>('prepareAgent');
    this.preparedAt = registerOutput<String>('preparedAt');
    this.promptOverrideConfigurations =
        registerOutput<List<AgentAgentPromptOverrideConfiguration>>(
            'promptOverrideConfigurations');
    this.region = registerOutput<String>('region');
    this.skipResourceInUseCheck =
        registerOutput<bool>('skipResourceInUseCheck');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentAgentTimeouts?>('timeouts');
  }
}
