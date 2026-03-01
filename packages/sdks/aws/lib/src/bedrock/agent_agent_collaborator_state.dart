// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_collaborator_agent_descriptor.dart';
import 'agent_agent_collaborator_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgentCollaborator resources.
class AgentAgentCollaboratorState {
  final pulumi.Input<AgentAgentCollaboratorAgentDescriptor>? agentDescriptor;
  /// ID if the agent to associate the collaborator.
  final pulumi.Input<String>? agentId;
  final pulumi.Input<String>? agentVersion;
  /// Instruction to give the collaborator.
  final pulumi.Input<String>? collaborationInstruction;
  /// ID of the Agent Collaborator.
  final pulumi.Input<String>? collaboratorId;
  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? collaboratorName;
  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool>? prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configure relaying the history to the collaborator.
  final pulumi.Input<String>? relayConversationHistory;
  final pulumi.Input<AgentAgentCollaboratorTimeouts>? timeouts;

  /// Creates a new [AgentAgentCollaboratorState].
  /// [agentDescriptor] Optional.
  /// [agentId] ID if the agent to associate the collaborator.
  /// [agentVersion] Optional.
  /// [collaborationInstruction] Instruction to give the collaborator.
  /// [collaboratorId] ID of the Agent Collaborator.
  /// [collaboratorName] Name of this collaborator.
  /// [prepareAgent] Whether to prepare the agent after creation or modification. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relayConversationHistory] Configure relaying the history to the collaborator.
  /// [timeouts] Optional.
  AgentAgentCollaboratorState({
    pulumi.Output<AgentAgentCollaboratorAgentDescriptor>? agentDescriptor,
    pulumi.Output<String>? agentId,
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? collaborationInstruction,
    pulumi.Output<String>? collaboratorId,
    pulumi.Output<String>? collaboratorName,
    pulumi.Output<bool>? prepareAgent,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relayConversationHistory,
    pulumi.Output<AgentAgentCollaboratorTimeouts>? timeouts,
  }) :
      agentDescriptor = pulumi.Input.asOptionalInput<AgentAgentCollaboratorAgentDescriptor>(agentDescriptor),
      agentId = pulumi.Input.asOptionalInput<String>(agentId),
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      collaborationInstruction = pulumi.Input.asOptionalInput<String>(collaborationInstruction),
      collaboratorId = pulumi.Input.asOptionalInput<String>(collaboratorId),
      collaboratorName = pulumi.Input.asOptionalInput<String>(collaboratorName),
      prepareAgent = pulumi.Input.asOptionalInput<bool>(prepareAgent),
      region = pulumi.Input.asOptionalInput<String>(region),
      relayConversationHistory = pulumi.Input.asOptionalInput<String>(relayConversationHistory),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentCollaboratorTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDescriptor': ?pulumi.Input.mapOptionalInputValue<AgentAgentCollaboratorAgentDescriptor, Map<String, dynamic>>(agentDescriptor, (value) => value.toMap()),
      'agentId': ?agentId,
      'agentVersion': ?agentVersion,
      'collaborationInstruction': ?collaborationInstruction,
      'collaboratorId': ?collaboratorId,
      'collaboratorName': ?collaboratorName,
      'prepareAgent': ?prepareAgent,
      'region': ?region,
      'relayConversationHistory': ?relayConversationHistory,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentCollaboratorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentCollaboratorState.fromMap(Map<String, dynamic> map) {
    return AgentAgentCollaboratorState(
      agentDescriptor: map['agentDescriptor'] == null ? null : pulumi.Output.create<AgentAgentCollaboratorAgentDescriptor>(AgentAgentCollaboratorAgentDescriptor.fromMap((map['agentDescriptor'] as Map).cast<String, dynamic>())),
      agentId: map['agentId'] == null ? null : pulumi.Output.create<String>(map['agentId'] as String),
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      collaborationInstruction: map['collaborationInstruction'] == null ? null : pulumi.Output.create<String>(map['collaborationInstruction'] as String),
      collaboratorId: map['collaboratorId'] == null ? null : pulumi.Output.create<String>(map['collaboratorId'] as String),
      collaboratorName: map['collaboratorName'] == null ? null : pulumi.Output.create<String>(map['collaboratorName'] as String),
      prepareAgent: map['prepareAgent'] == null ? null : pulumi.Output.create<bool>(map['prepareAgent'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relayConversationHistory: map['relayConversationHistory'] == null ? null : pulumi.Output.create<String>(map['relayConversationHistory'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentCollaboratorTimeouts>(AgentAgentCollaboratorTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

