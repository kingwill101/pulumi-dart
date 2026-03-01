// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_collaborator_agent_descriptor.dart';
import 'agent_agent_collaborator_timeouts.dart';

/// {@template pulumi_bedrock_agent_agent_collaborator_agent_agent_collaborator_args_doc}
/// The set of arguments for AgentAgentCollaborator.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_agent_collaborator_agent_agent_collaborator_args_doc}
class AgentAgentCollaboratorArgs {
  final pulumi.Input<AgentAgentCollaboratorAgentDescriptor> agentDescriptor;
  /// ID if the agent to associate the collaborator.
  final pulumi.Input<String> agentId;
  final pulumi.Input<String>? agentVersion;
  /// Instruction to give the collaborator.
  final pulumi.Input<String> collaborationInstruction;
  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> collaboratorName;
  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool>? prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configure relaying the history to the collaborator.
  final pulumi.Input<String>? relayConversationHistory;
  final pulumi.Input<AgentAgentCollaboratorTimeouts>? timeouts;

  /// Creates a new [AgentAgentCollaboratorArgs].
  /// [agentDescriptor] Required.
  /// [agentId] ID if the agent to associate the collaborator.
  /// [agentVersion] Optional.
  /// [collaborationInstruction] Instruction to give the collaborator.
  /// [collaboratorName] Name of this collaborator.
  /// [prepareAgent] Whether to prepare the agent after creation or modification. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relayConversationHistory] Configure relaying the history to the collaborator.
  /// [timeouts] Optional.
  AgentAgentCollaboratorArgs({
    required pulumi.Output<AgentAgentCollaboratorAgentDescriptor> agentDescriptor,
    required pulumi.Output<String> agentId,
    pulumi.Output<String>? agentVersion,
    required pulumi.Output<String> collaborationInstruction,
    required pulumi.Output<String> collaboratorName,
    pulumi.Output<bool>? prepareAgent,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relayConversationHistory,
    pulumi.Output<AgentAgentCollaboratorTimeouts>? timeouts,
  }) :
      agentDescriptor = pulumi.Input.asInput<AgentAgentCollaboratorAgentDescriptor>(agentDescriptor),
      agentId = pulumi.Input.asInput<String>(agentId),
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      collaborationInstruction = pulumi.Input.asInput<String>(collaborationInstruction),
      collaboratorName = pulumi.Input.asInput<String>(collaboratorName),
      prepareAgent = pulumi.Input.asOptionalInput<bool>(prepareAgent),
      region = pulumi.Input.asOptionalInput<String>(region),
      relayConversationHistory = pulumi.Input.asOptionalInput<String>(relayConversationHistory),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentCollaboratorTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDescriptor': pulumi.Input.mapInputValue<AgentAgentCollaboratorAgentDescriptor, Map<String, dynamic>>(agentDescriptor, (value) => value.toMap()),
      'agentId': agentId,
      'agentVersion': ?agentVersion,
      'collaborationInstruction': collaborationInstruction,
      'collaboratorName': collaboratorName,
      'prepareAgent': ?prepareAgent,
      'region': ?region,
      'relayConversationHistory': ?relayConversationHistory,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentCollaboratorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentCollaboratorArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentCollaboratorArgs(
      agentDescriptor: pulumi.Output.create<AgentAgentCollaboratorAgentDescriptor>(AgentAgentCollaboratorAgentDescriptor.fromMap((map['agentDescriptor'] as Map).cast<String, dynamic>())),
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      collaborationInstruction: pulumi.Output.create<String>(map['collaborationInstruction'] as String),
      collaboratorName: pulumi.Output.create<String>(map['collaboratorName'] as String),
      prepareAgent: map['prepareAgent'] == null ? null : pulumi.Output.create<bool>(map['prepareAgent'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relayConversationHistory: map['relayConversationHistory'] == null ? null : pulumi.Output.create<String>(map['relayConversationHistory'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentCollaboratorTimeouts>(AgentAgentCollaboratorTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

