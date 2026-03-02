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
      agentDescriptor: (AgentAgentCollaboratorAgentDescriptor.fromMap((map['agentDescriptor']! as Map).cast<String, dynamic>())).input(),
      agentId: (map['agentId'] as String).input(),
      agentVersion: map['agentVersion'] == null ? null : ((map['agentVersion'] as String).input()).input(),
      collaborationInstruction: (map['collaborationInstruction'] as String).input(),
      collaboratorName: (map['collaboratorName'] as String).input(),
      prepareAgent: map['prepareAgent'] == null ? null : ((map['prepareAgent'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      relayConversationHistory: map['relayConversationHistory'] == null ? null : ((map['relayConversationHistory'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentAgentCollaboratorTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

