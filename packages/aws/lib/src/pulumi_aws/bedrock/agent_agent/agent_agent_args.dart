// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_guardrail_configuration/agent_agent_guardrail_configuration.dart';
import '../agent_agent_memory_configuration/agent_agent_memory_configuration.dart';
import '../agent_agent_prompt_override_configuration/agent_agent_prompt_override_configuration.dart';
import '../agent_agent_timeouts/agent_agent_timeouts.dart';

/// The set of arguments for AgentAgent.
class AgentAgentArgs {
  /// Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  final Input<String>? agentCollaboration;

  /// Name of the agent.
  final Input<String> agentName;

  /// ARN of the IAM role with permissions to invoke API operations on the agent.
  final Input<String> agentResourceRoleArn;

  /// ARN of the AWS KMS key that encrypts the agent.
  final Input<String>? customerEncryptionKeyArn;

  /// Description of the agent.
  final Input<String>? description;

  /// Foundation model used for orchestration by the agent.
  ///
  /// The following arguments are optional:
  final Input<String> foundationModel;

  /// Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  final Input<List<AgentAgentGuardrailConfiguration>>? guardrailConfigurations;

  /// Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  final Input<int>? idleSessionTtlInSeconds;

  /// Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  final Input<String>? instruction;

  /// Configurations for the agent's ability to retain the conversational context.
  final Input<List<AgentAgentMemoryConfiguration>>? memoryConfigurations;

  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final Input<bool>? prepareAgent;

  /// Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  final Input<List<AgentAgentPromptOverrideConfiguration>>?
      promptOverrideConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether the in-use check is skipped when deleting the agent.
  final Input<bool>? skipResourceInUseCheck;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentAgentTimeouts>? timeouts;

  AgentAgentArgs({
    this.agentCollaboration,
    required this.agentName,
    required this.agentResourceRoleArn,
    this.customerEncryptionKeyArn,
    this.description,
    required this.foundationModel,
    this.guardrailConfigurations,
    this.idleSessionTtlInSeconds,
    this.instruction,
    this.memoryConfigurations,
    this.prepareAgent,
    this.promptOverrideConfigurations,
    this.region,
    this.skipResourceInUseCheck,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentCollaborationValue = agentCollaboration;
    if (agentCollaborationValue != null) {
      map['agentCollaboration'] = agentCollaborationValue;
    }
    map['agentName'] = agentName;
    map['agentResourceRoleArn'] = agentResourceRoleArn;
    final customerEncryptionKeyArnValue = customerEncryptionKeyArn;
    if (customerEncryptionKeyArnValue != null) {
      map['customerEncryptionKeyArn'] = customerEncryptionKeyArnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['foundationModel'] = foundationModel;
    final guardrailConfigurationsValue = guardrailConfigurations;
    if (guardrailConfigurationsValue != null) {
      map['guardrailConfigurations'] = Input.mapOptionalInputValue<
              List<AgentAgentGuardrailConfiguration>,
              List<Map<String, dynamic>>>(
          guardrailConfigurationsValue,
          (value) => Input.encodeList<AgentAgentGuardrailConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idleSessionTtlInSecondsValue = idleSessionTtlInSeconds;
    if (idleSessionTtlInSecondsValue != null) {
      map['idleSessionTtlInSeconds'] = idleSessionTtlInSecondsValue;
    }
    final instructionValue = instruction;
    if (instructionValue != null) {
      map['instruction'] = instructionValue;
    }
    final memoryConfigurationsValue = memoryConfigurations;
    if (memoryConfigurationsValue != null) {
      map['memoryConfigurations'] = Input.mapOptionalInputValue<
              List<AgentAgentMemoryConfiguration>, List<Map<String, dynamic>>>(
          memoryConfigurationsValue,
          (value) => Input.encodeList<AgentAgentMemoryConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final prepareAgentValue = prepareAgent;
    if (prepareAgentValue != null) {
      map['prepareAgent'] = prepareAgentValue;
    }
    final promptOverrideConfigurationsValue = promptOverrideConfigurations;
    if (promptOverrideConfigurationsValue != null) {
      map['promptOverrideConfigurations'] = Input.mapOptionalInputValue<
              List<AgentAgentPromptOverrideConfiguration>,
              List<Map<String, dynamic>>>(
          promptOverrideConfigurationsValue,
          (value) => Input.encodeList<AgentAgentPromptOverrideConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipResourceInUseCheckValue = skipResourceInUseCheck;
    if (skipResourceInUseCheckValue != null) {
      map['skipResourceInUseCheck'] = skipResourceInUseCheckValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<AgentAgentTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentArgs(
      agentCollaboration:
          Input.asOptionalInput<String>(map['agentCollaboration']),
      agentName: Input.asInput<String>(map['agentName']),
      agentResourceRoleArn: Input.asInput<String>(map['agentResourceRoleArn']),
      customerEncryptionKeyArn:
          Input.asOptionalInput<String>(map['customerEncryptionKeyArn']),
      description: Input.asOptionalInput<String>(map['description']),
      foundationModel: Input.asInput<String>(map['foundationModel']),
      guardrailConfigurations:
          Input.asOptionalInput<List<AgentAgentGuardrailConfiguration>>(
              map['guardrailConfigurations']),
      idleSessionTtlInSeconds:
          Input.asOptionalInput<int>(map['idleSessionTtlInSeconds']),
      instruction: Input.asOptionalInput<String>(map['instruction']),
      memoryConfigurations:
          Input.asOptionalInput<List<AgentAgentMemoryConfiguration>>(
              map['memoryConfigurations']),
      prepareAgent: Input.asOptionalInput<bool>(map['prepareAgent']),
      promptOverrideConfigurations:
          Input.asOptionalInput<List<AgentAgentPromptOverrideConfiguration>>(
              map['promptOverrideConfigurations']),
      region: Input.asOptionalInput<String>(map['region']),
      skipResourceInUseCheck:
          Input.asOptionalInput<bool>(map['skipResourceInUseCheck']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentAgentTimeouts>(map['timeouts']),
    );
  }
}
