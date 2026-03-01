// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_agent_version_summary_guardrail_configuration.dart';

class GetAgentAgentVersionsAgentVersionSummary {
  /// Name of agent to which the version belongs.
  final String agentName;
  /// Status of the agent to which the version belongs.
  final String agentStatus;
  /// Version of the agent.
  final String agentVersion;
  /// Time at which the version was created.
  final String createdAt;
  /// Description of the version of the agent.
  /// * `GuardrailConfiguration` - Details aout the guardrail associated with the agent. See Guardrail Configuration
  final String description;
  final List<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>? guardrailConfigurations;
  /// Time at which the version was last updated.
  final String updatedAt;

  /// Creates a new [GetAgentAgentVersionsAgentVersionSummary].
  /// [agentName] Name of agent to which the version belongs.
  /// [agentStatus] Status of the agent to which the version belongs.
  /// [agentVersion] Version of the agent.
  /// [createdAt] Time at which the version was created.
  /// [description] Description of the version of the agent.
  /// [guardrailConfigurations] Optional.
  /// [updatedAt] Time at which the version was last updated.
  GetAgentAgentVersionsAgentVersionSummary({
    required this.agentName,
    required this.agentStatus,
    required this.agentVersion,
    required this.createdAt,
    required this.description,
    this.guardrailConfigurations,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'agentStatus': agentStatus,
      'agentVersion': agentVersion,
      'createdAt': createdAt,
      'description': description,
      'guardrailConfigurations': ?guardrailConfigurations == null ? null : pulumi.Input.encodeList<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration, Map<String, dynamic>>(guardrailConfigurations!, (value) => value.toMap()),
      'updatedAt': updatedAt,
    };
  }

  factory GetAgentAgentVersionsAgentVersionSummary.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsAgentVersionSummary(
      agentName: map['agentName'] as String,
      agentStatus: map['agentStatus'] as String,
      agentVersion: map['agentVersion'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      guardrailConfigurations: map['guardrailConfigurations'] == null ? null : pulumi.Input.decodeList<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>(map['guardrailConfigurations'], (value) => GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] as String,
    );
  }
}

