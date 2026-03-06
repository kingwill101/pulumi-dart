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
  const AgentAgentCollaboratorArgs({
    required this.agentDescriptor,
    required this.agentId,
    this.agentVersion,
    required this.collaborationInstruction,
    required this.collaboratorName,
    this.prepareAgent,
    this.region,
    this.relayConversationHistory,
    this.timeouts,
  });

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
      agentDescriptor: pulumi.Input.fromValue(AgentAgentCollaboratorAgentDescriptor.fromMap((map['agentDescriptor']! as Map).cast<String, dynamic>())),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collaborationInstruction: pulumi.Input.fromValue(map['collaborationInstruction'] as String),
      collaboratorName: pulumi.Input.fromValue(map['collaboratorName'] as String),
      prepareAgent: (() { final guardedValue = map['prepareAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayConversationHistory: (() { final guardedValue = map['relayConversationHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentCollaboratorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

