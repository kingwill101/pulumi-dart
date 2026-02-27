import 'package:pulumi/pulumi.dart';
import '../agent_agent_collaborator_agent_descriptor/agent_agent_collaborator_agent_descriptor.dart';
import '../agent_agent_collaborator_timeouts/agent_agent_collaborator_timeouts.dart';
import 'agent_agent_collaborator_args.dart';

/// Resource for managing an AWS Bedrock Agents Agent Collaborator.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Agents Agent Collaborator using a comma-delimited string combining `agent_id`, `agent_version`, and `collaborator_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentCollaborator:AgentAgentCollaborator example 9LSJO0BFI8,DRAFT,AG3TN4RQIY
/// ```
class AgentAgentCollaborator extends CustomResource {
  late final Output<AgentAgentCollaboratorAgentDescriptor> agentDescriptor;

  /// ID if the agent to associate the collaborator.
  late final Output<String> agentId;
  late final Output<String> agentVersion;

  /// Instruction to give the collaborator.
  late final Output<String> collaborationInstruction;

  /// ID of the Agent Collaborator.
  late final Output<String> collaboratorId;

  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  late final Output<String> collaboratorName;

  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  late final Output<bool> prepareAgent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configure relaying the history to the collaborator.
  late final Output<String> relayConversationHistory;
  late final Output<AgentAgentCollaboratorTimeouts?> timeouts;

  AgentAgentCollaborator(
    String name, {
    AgentAgentCollaboratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentCollaborator:AgentAgentCollaborator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentDescriptor =
        registerOutput<AgentAgentCollaboratorAgentDescriptor>(
            'agentDescriptor');
    this.agentId = registerOutput<String>('agentId');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.collaborationInstruction =
        registerOutput<String>('collaborationInstruction');
    this.collaboratorId = registerOutput<String>('collaboratorId');
    this.collaboratorName = registerOutput<String>('collaboratorName');
    this.prepareAgent = registerOutput<bool>('prepareAgent');
    this.region = registerOutput<String>('region');
    this.relayConversationHistory =
        registerOutput<String>('relayConversationHistory');
    this.timeouts = registerOutput<AgentAgentCollaboratorTimeouts?>('timeouts');
  }
}
