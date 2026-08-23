// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_agent_version_summary_guardrail_configuration.dart';

class GetAgentAgentVersionsAgentVersionSummary {
  /// Name of agent to which the version belongs.
  final pulumi.Input<String> agentName;
  /// Status of the agent to which the version belongs.
  final pulumi.Input<String> agentStatus;
  /// Version of the agent.
  final pulumi.Input<String> agentVersion;
  /// Time at which the version was created.
  final pulumi.Input<String> createdAt;
  /// Description of the version of the agent.
  /// * `GuardrailConfiguration` - Details aout the guardrail associated with the agent. See Guardrail Configuration
  final pulumi.Input<String> description;
  final pulumi.Input<List<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>>? guardrailConfigurations;
  /// Time at which the version was last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetAgentAgentVersionsAgentVersionSummary].
  /// [agentName] Name of agent to which the version belongs.
  /// [agentStatus] Status of the agent to which the version belongs.
  /// [agentVersion] Version of the agent.
  /// [createdAt] Time at which the version was created.
  /// [description] Description of the version of the agent.
  /// [guardrailConfigurations] Optional.
  /// [updatedAt] Time at which the version was last updated.
  const GetAgentAgentVersionsAgentVersionSummary({
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
      'guardrailConfigurations': ?pulumi.Input.mapOptionalInputValue<List<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>, List<Map<String, dynamic>>>(guardrailConfigurations, (value) => pulumi.Input.encodeList<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
    };
  }

  factory GetAgentAgentVersionsAgentVersionSummary.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsAgentVersionSummary(
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      agentStatus: pulumi.Input.fromValue(map['agentStatus'] as String),
      agentVersion: pulumi.Input.fromValue(map['agentVersion'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      guardrailConfigurations: (() { final guardedValue = map['guardrailConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>(guardedValue, (value) => GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
