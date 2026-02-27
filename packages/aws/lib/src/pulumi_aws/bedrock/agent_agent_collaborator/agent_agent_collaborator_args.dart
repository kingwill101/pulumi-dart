// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_agent_collaborator_agent_descriptor/agent_agent_collaborator_agent_descriptor.dart';
import '../agent_agent_collaborator_timeouts/agent_agent_collaborator_timeouts.dart';

/// The set of arguments for AgentAgentCollaborator.
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
    final map = <String, dynamic>{};
    map['agentDescriptor'] = pulumi.Input.mapInputValue<
        AgentAgentCollaboratorAgentDescriptor,
        Map<String, dynamic>>(agentDescriptor, (value) => value.toMap());
    map['agentId'] = agentId;
    final agentVersionValue = agentVersion;
    if (agentVersionValue != null) {
      map['agentVersion'] = agentVersionValue;
    }
    map['collaborationInstruction'] = collaborationInstruction;
    map['collaboratorName'] = collaboratorName;
    final prepareAgentValue = prepareAgent;
    if (prepareAgentValue != null) {
      map['prepareAgent'] = prepareAgentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final relayConversationHistoryValue = relayConversationHistory;
    if (relayConversationHistoryValue != null) {
      map['relayConversationHistory'] = relayConversationHistoryValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentCollaboratorTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentCollaboratorArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentCollaboratorArgs(
      agentDescriptor:
          pulumi.Input.asInput<AgentAgentCollaboratorAgentDescriptor>(
              map['agentDescriptor']),
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      agentVersion: pulumi.Input.asOptionalInput<String>(map['agentVersion']),
      collaborationInstruction:
          pulumi.Input.asInput<String>(map['collaborationInstruction']),
      collaboratorName: pulumi.Input.asInput<String>(map['collaboratorName']),
      prepareAgent: pulumi.Input.asOptionalInput<bool>(map['prepareAgent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      relayConversationHistory:
          pulumi.Input.asOptionalInput<String>(map['relayConversationHistory']),
      timeouts: pulumi.Input.asOptionalInput<AgentAgentCollaboratorTimeouts>(
          map['timeouts']),
    );
  }
}
