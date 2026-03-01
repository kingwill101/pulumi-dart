// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_guardrail_configuration.dart';
import 'agent_agent_memory_configuration.dart';
import 'agent_agent_prompt_override_configuration.dart';
import 'agent_agent_timeouts.dart';

/// {@template pulumi_bedrock_agent_agent_agent_agent_args_doc}
/// The set of arguments for AgentAgent.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_agent_agent_agent_args_doc}
class AgentAgentArgs {
  /// Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  final pulumi.Input<String>? agentCollaboration;
  /// Name of the agent.
  final pulumi.Input<String> agentName;
  /// ARN of the IAM role with permissions to invoke API operations on the agent.
  final pulumi.Input<String> agentResourceRoleArn;
  /// ARN of the AWS KMS key that encrypts the agent.
  final pulumi.Input<String>? customerEncryptionKeyArn;
  /// Description of the agent.
  final pulumi.Input<String>? description;
  /// Foundation model used for orchestration by the agent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> foundationModel;
  /// Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  final pulumi.Input<List<AgentAgentGuardrailConfiguration>>? guardrailConfigurations;
  /// Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  final pulumi.Input<int>? idleSessionTtlInSeconds;
  /// Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  final pulumi.Input<String>? instruction;
  /// Configurations for the agent's ability to retain the conversational context.
  final pulumi.Input<List<AgentAgentMemoryConfiguration>>? memoryConfigurations;
  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool>? prepareAgent;
  /// Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  final pulumi.Input<List<AgentAgentPromptOverrideConfiguration>>? promptOverrideConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the in-use check is skipped when deleting the agent.
  final pulumi.Input<bool>? skipResourceInUseCheck;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentAgentTimeouts>? timeouts;

  /// Creates a new [AgentAgentArgs].
  /// [agentCollaboration] Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  /// [agentName] Name of the agent.
  /// [agentResourceRoleArn] ARN of the IAM role with permissions to invoke API operations on the agent.
  /// [customerEncryptionKeyArn] ARN of the AWS KMS key that encrypts the agent.
  /// [description] Description of the agent.
  /// [foundationModel] Foundation model used for orchestration by the agent.
  /// [guardrailConfigurations] Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  /// [idleSessionTtlInSeconds] Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  /// [instruction] Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  /// [memoryConfigurations] Configurations for the agent's ability to retain the conversational context.
  /// [prepareAgent] Whether to prepare the agent after creation or modification. Defaults to `true`.
  /// [promptOverrideConfigurations] Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipResourceInUseCheck] Whether the in-use check is skipped when deleting the agent.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentAgentArgs({
    pulumi.Output<String>? agentCollaboration,
    required pulumi.Output<String> agentName,
    required pulumi.Output<String> agentResourceRoleArn,
    pulumi.Output<String>? customerEncryptionKeyArn,
    pulumi.Output<String>? description,
    required pulumi.Output<String> foundationModel,
    pulumi.Output<List<AgentAgentGuardrailConfiguration>>? guardrailConfigurations,
    pulumi.Output<int>? idleSessionTtlInSeconds,
    pulumi.Output<String>? instruction,
    pulumi.Output<List<AgentAgentMemoryConfiguration>>? memoryConfigurations,
    pulumi.Output<bool>? prepareAgent,
    pulumi.Output<List<AgentAgentPromptOverrideConfiguration>>? promptOverrideConfigurations,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipResourceInUseCheck,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<AgentAgentTimeouts>? timeouts,
  }) :
      agentCollaboration = pulumi.Input.asOptionalInput<String>(agentCollaboration),
      agentName = pulumi.Input.asInput<String>(agentName),
      agentResourceRoleArn = pulumi.Input.asInput<String>(agentResourceRoleArn),
      customerEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(customerEncryptionKeyArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      foundationModel = pulumi.Input.asInput<String>(foundationModel),
      guardrailConfigurations = pulumi.Input.asOptionalInput<List<AgentAgentGuardrailConfiguration>>(guardrailConfigurations),
      idleSessionTtlInSeconds = pulumi.Input.asOptionalInput<int>(idleSessionTtlInSeconds),
      instruction = pulumi.Input.asOptionalInput<String>(instruction),
      memoryConfigurations = pulumi.Input.asOptionalInput<List<AgentAgentMemoryConfiguration>>(memoryConfigurations),
      prepareAgent = pulumi.Input.asOptionalInput<bool>(prepareAgent),
      promptOverrideConfigurations = pulumi.Input.asOptionalInput<List<AgentAgentPromptOverrideConfiguration>>(promptOverrideConfigurations),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipResourceInUseCheck = pulumi.Input.asOptionalInput<bool>(skipResourceInUseCheck),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCollaboration': ?agentCollaboration,
      'agentName': agentName,
      'agentResourceRoleArn': agentResourceRoleArn,
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'description': ?description,
      'foundationModel': foundationModel,
      'guardrailConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentGuardrailConfiguration>, List<Map<String, dynamic>>>(guardrailConfigurations, (value) => pulumi.Input.encodeList<AgentAgentGuardrailConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleSessionTtlInSeconds': ?idleSessionTtlInSeconds,
      'instruction': ?instruction,
      'memoryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentMemoryConfiguration>, List<Map<String, dynamic>>>(memoryConfigurations, (value) => pulumi.Input.encodeList<AgentAgentMemoryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prepareAgent': ?prepareAgent,
      'promptOverrideConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentPromptOverrideConfiguration>, List<Map<String, dynamic>>>(promptOverrideConfigurations, (value) => pulumi.Input.encodeList<AgentAgentPromptOverrideConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'skipResourceInUseCheck': ?skipResourceInUseCheck,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentArgs(
      agentCollaboration: map['agentCollaboration'] == null ? null : pulumi.Output.create<String>(map['agentCollaboration'] as String),
      agentName: pulumi.Output.create<String>(map['agentName'] as String),
      agentResourceRoleArn: pulumi.Output.create<String>(map['agentResourceRoleArn'] as String),
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['customerEncryptionKeyArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      foundationModel: pulumi.Output.create<String>(map['foundationModel'] as String),
      guardrailConfigurations: map['guardrailConfigurations'] == null ? null : pulumi.Output.create<List<AgentAgentGuardrailConfiguration>>(pulumi.Input.decodeList<AgentAgentGuardrailConfiguration>(map['guardrailConfigurations'], (value) => AgentAgentGuardrailConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      idleSessionTtlInSeconds: map['idleSessionTtlInSeconds'] == null ? null : pulumi.Output.create<int>(map['idleSessionTtlInSeconds'] as int),
      instruction: map['instruction'] == null ? null : pulumi.Output.create<String>(map['instruction'] as String),
      memoryConfigurations: map['memoryConfigurations'] == null ? null : pulumi.Output.create<List<AgentAgentMemoryConfiguration>>(pulumi.Input.decodeList<AgentAgentMemoryConfiguration>(map['memoryConfigurations'], (value) => AgentAgentMemoryConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      prepareAgent: map['prepareAgent'] == null ? null : pulumi.Output.create<bool>(map['prepareAgent'] as bool),
      promptOverrideConfigurations: map['promptOverrideConfigurations'] == null ? null : pulumi.Output.create<List<AgentAgentPromptOverrideConfiguration>>(pulumi.Input.decodeList<AgentAgentPromptOverrideConfiguration>(map['promptOverrideConfigurations'], (value) => AgentAgentPromptOverrideConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipResourceInUseCheck: map['skipResourceInUseCheck'] == null ? null : pulumi.Output.create<bool>(map['skipResourceInUseCheck'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentTimeouts>(AgentAgentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

