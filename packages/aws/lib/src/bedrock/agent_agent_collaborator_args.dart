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
    required AgentAgentCollaboratorAgentDescriptor agentDescriptor,
    required String agentId,
    String? agentVersion,
    required String collaborationInstruction,
    required String collaboratorName,
    bool? prepareAgent,
    String? region,
    String? relayConversationHistory,
    AgentAgentCollaboratorTimeouts? timeouts,
  })  : agentDescriptor =
            pulumi.Input.asInput<AgentAgentCollaboratorAgentDescriptor>(
                agentDescriptor),
        agentId = pulumi.Input.asInput<String>(agentId),
        agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
        collaborationInstruction =
            pulumi.Input.asInput<String>(collaborationInstruction),
        collaboratorName = pulumi.Input.asInput<String>(collaboratorName),
        prepareAgent = pulumi.Input.asOptionalInput<bool>(prepareAgent),
        region = pulumi.Input.asOptionalInput<String>(region),
        relayConversationHistory =
            pulumi.Input.asOptionalInput<String>(relayConversationHistory),
        timeouts = pulumi.Input.asOptionalInput<AgentAgentCollaboratorTimeouts>(
            timeouts);

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
      agentDescriptor: AgentAgentCollaboratorAgentDescriptor.fromMap(
          (map['agentDescriptor'] as Map).cast<String, dynamic>()),
      agentId: map['agentId'] as String,
      agentVersion:
          map['agentVersion'] == null ? null : map['agentVersion'] as String,
      collaborationInstruction: map['collaborationInstruction'] as String,
      collaboratorName: map['collaboratorName'] as String,
      prepareAgent:
          map['prepareAgent'] == null ? null : map['prepareAgent'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      relayConversationHistory: map['relayConversationHistory'] == null
          ? null
          : map['relayConversationHistory'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : AgentAgentCollaboratorTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
