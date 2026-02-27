// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_collaborator_agent_descriptor/agent_agent_collaborator_agent_descriptor.dart';
import '../agent_agent_collaborator_timeouts/agent_agent_collaborator_timeouts.dart';

/// The set of arguments for AgentAgentCollaborator.
class AgentAgentCollaboratorArgs {
  final Input<AgentAgentCollaboratorAgentDescriptor> agentDescriptor;

  /// ID if the agent to associate the collaborator.
  final Input<String> agentId;
  final Input<String>? agentVersion;

  /// Instruction to give the collaborator.
  final Input<String> collaborationInstruction;

  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  final Input<String> collaboratorName;

  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  final Input<bool>? prepareAgent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configure relaying the history to the collaborator.
  final Input<String>? relayConversationHistory;
  final Input<AgentAgentCollaboratorTimeouts>? timeouts;

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
    map['agentDescriptor'] = Input.mapInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentAgentCollaboratorTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentCollaboratorArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentCollaboratorArgs(
      agentDescriptor: Input.asInput<AgentAgentCollaboratorAgentDescriptor>(
          map['agentDescriptor']),
      agentId: Input.asInput<String>(map['agentId']),
      agentVersion: Input.asOptionalInput<String>(map['agentVersion']),
      collaborationInstruction:
          Input.asInput<String>(map['collaborationInstruction']),
      collaboratorName: Input.asInput<String>(map['collaboratorName']),
      prepareAgent: Input.asOptionalInput<bool>(map['prepareAgent']),
      region: Input.asOptionalInput<String>(map['region']),
      relayConversationHistory:
          Input.asOptionalInput<String>(map['relayConversationHistory']),
      timeouts: Input.asOptionalInput<AgentAgentCollaboratorTimeouts>(
          map['timeouts']),
    );
  }
}
