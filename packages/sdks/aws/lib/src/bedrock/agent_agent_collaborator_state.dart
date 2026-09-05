// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_collaborator_agent_descriptor.dart';
import 'agent_agent_collaborator_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgentCollaborator resources.
class AgentAgentCollaboratorState {
  final pulumi.Input<AgentAgentCollaboratorAgentDescriptor?>? agentDescriptor;
  /// ID if the agent to associate the collaborator.
  final pulumi.Input<String?>? agentId;
  final pulumi.Input<String?>? agentVersion;
  /// Instruction to give the collaborator.
  final pulumi.Input<String?>? collaborationInstruction;
  /// ID of the Agent Collaborator.
  final pulumi.Input<String?>? collaboratorId;
  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? collaboratorName;
  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool?>? prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configure relaying the history to the collaborator.
  final pulumi.Input<String?>? relayConversationHistory;
  final pulumi.Input<AgentAgentCollaboratorTimeouts?>? timeouts;

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
  const AgentAgentCollaboratorState({
    this.agentDescriptor,
    this.agentId,
    this.agentVersion,
    this.collaborationInstruction,
    this.collaboratorId,
    this.collaboratorName,
    this.prepareAgent,
    this.region,
    this.relayConversationHistory,
    this.timeouts,
  });

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
      agentDescriptor: (() { final guardedValue = map['agentDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentCollaboratorAgentDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collaborationInstruction: (() { final guardedValue = map['collaborationInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collaboratorId: (() { final guardedValue = map['collaboratorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collaboratorName: (() { final guardedValue = map['collaboratorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prepareAgent: (() { final guardedValue = map['prepareAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayConversationHistory: (() { final guardedValue = map['relayConversationHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentCollaboratorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
