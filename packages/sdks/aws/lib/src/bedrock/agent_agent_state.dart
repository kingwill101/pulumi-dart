// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_guardrail_configuration.dart';
import 'agent_agent_memory_configuration.dart';
import 'agent_agent_prompt_override_configuration.dart';
import 'agent_agent_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgent resources.
class AgentAgentState {
  /// ARN of the agent.
  final pulumi.Input<String>? agentArn;
  /// Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  final pulumi.Input<String>? agentCollaboration;
  /// Unique identifier of the agent.
  final pulumi.Input<String>? agentId;
  /// Name of the agent.
  final pulumi.Input<String>? agentName;
  /// ARN of the IAM role with permissions to invoke API operations on the agent.
  final pulumi.Input<String>? agentResourceRoleArn;
  /// Version of the agent.
  final pulumi.Input<String>? agentVersion;
  /// ARN of the AWS KMS key that encrypts the agent.
  final pulumi.Input<String>? customerEncryptionKeyArn;
  /// Description of the agent.
  final pulumi.Input<String>? description;
  /// Foundation model used for orchestration by the agent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? foundationModel;
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
  /// Timestamp of when the agent was last prepared.
  final pulumi.Input<String>? preparedAt;
  /// Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  final pulumi.Input<List<AgentAgentPromptOverrideConfiguration>>? promptOverrideConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the in-use check is skipped when deleting the agent.
  final pulumi.Input<bool>? skipResourceInUseCheck;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentAgentTimeouts>? timeouts;

  /// Creates a new [AgentAgentState].
  /// [agentArn] ARN of the agent.
  /// [agentCollaboration] Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  /// [agentId] Unique identifier of the agent.
  /// [agentName] Name of the agent.
  /// [agentResourceRoleArn] ARN of the IAM role with permissions to invoke API operations on the agent.
  /// [agentVersion] Version of the agent.
  /// [customerEncryptionKeyArn] ARN of the AWS KMS key that encrypts the agent.
  /// [description] Description of the agent.
  /// [foundationModel] Foundation model used for orchestration by the agent.
  /// [guardrailConfigurations] Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  /// [idleSessionTtlInSeconds] Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  /// [instruction] Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  /// [memoryConfigurations] Configurations for the agent's ability to retain the conversational context.
  /// [prepareAgent] Whether to prepare the agent after creation or modification. Defaults to `true`.
  /// [preparedAt] Timestamp of when the agent was last prepared.
  /// [promptOverrideConfigurations] Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipResourceInUseCheck] Whether the in-use check is skipped when deleting the agent.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AgentAgentState({
    this.agentArn,
    this.agentCollaboration,
    this.agentId,
    this.agentName,
    this.agentResourceRoleArn,
    this.agentVersion,
    this.customerEncryptionKeyArn,
    this.description,
    this.foundationModel,
    this.guardrailConfigurations,
    this.idleSessionTtlInSeconds,
    this.instruction,
    this.memoryConfigurations,
    this.prepareAgent,
    this.preparedAt,
    this.promptOverrideConfigurations,
    this.region,
    this.skipResourceInUseCheck,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArn': ?agentArn,
      'agentCollaboration': ?agentCollaboration,
      'agentId': ?agentId,
      'agentName': ?agentName,
      'agentResourceRoleArn': ?agentResourceRoleArn,
      'agentVersion': ?agentVersion,
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'description': ?description,
      'foundationModel': ?foundationModel,
      'guardrailConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentGuardrailConfiguration>, List<Map<String, dynamic>>>(guardrailConfigurations, (value) => pulumi.Input.encodeList<AgentAgentGuardrailConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleSessionTtlInSeconds': ?idleSessionTtlInSeconds,
      'instruction': ?instruction,
      'memoryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentMemoryConfiguration>, List<Map<String, dynamic>>>(memoryConfigurations, (value) => pulumi.Input.encodeList<AgentAgentMemoryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prepareAgent': ?prepareAgent,
      'preparedAt': ?preparedAt,
      'promptOverrideConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentPromptOverrideConfiguration>, List<Map<String, dynamic>>>(promptOverrideConfigurations, (value) => pulumi.Input.encodeList<AgentAgentPromptOverrideConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'skipResourceInUseCheck': ?skipResourceInUseCheck,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentState.fromMap(Map<String, dynamic> map) {
    return AgentAgentState(
      agentArn: map['agentArn'] == null ? null : ((map['agentArn'] as String).input()).input(),
      agentCollaboration: map['agentCollaboration'] == null ? null : ((map['agentCollaboration'] as String).input()).input(),
      agentId: map['agentId'] == null ? null : ((map['agentId'] as String).input()).input(),
      agentName: map['agentName'] == null ? null : ((map['agentName'] as String).input()).input(),
      agentResourceRoleArn: map['agentResourceRoleArn'] == null ? null : ((map['agentResourceRoleArn'] as String).input()).input(),
      agentVersion: map['agentVersion'] == null ? null : ((map['agentVersion'] as String).input()).input(),
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : ((map['customerEncryptionKeyArn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      foundationModel: map['foundationModel'] == null ? null : ((map['foundationModel'] as String).input()).input(),
      guardrailConfigurations: map['guardrailConfigurations'] == null ? null : ((pulumi.Input.decodeList<AgentAgentGuardrailConfiguration>(map['guardrailConfigurations']!, (value) => AgentAgentGuardrailConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      idleSessionTtlInSeconds: map['idleSessionTtlInSeconds'] == null ? null : ((map['idleSessionTtlInSeconds'] as int).input()).input(),
      instruction: map['instruction'] == null ? null : ((map['instruction'] as String).input()).input(),
      memoryConfigurations: map['memoryConfigurations'] == null ? null : ((pulumi.Input.decodeList<AgentAgentMemoryConfiguration>(map['memoryConfigurations']!, (value) => AgentAgentMemoryConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      prepareAgent: map['prepareAgent'] == null ? null : ((map['prepareAgent'] as bool).input()).input(),
      preparedAt: map['preparedAt'] == null ? null : ((map['preparedAt'] as String).input()).input(),
      promptOverrideConfigurations: map['promptOverrideConfigurations'] == null ? null : ((pulumi.Input.decodeList<AgentAgentPromptOverrideConfiguration>(map['promptOverrideConfigurations']!, (value) => AgentAgentPromptOverrideConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      skipResourceInUseCheck: map['skipResourceInUseCheck'] == null ? null : ((map['skipResourceInUseCheck'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentAgentTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

