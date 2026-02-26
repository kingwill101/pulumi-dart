// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_agent_agent_versions_agent_version_summary_guardrail_configuration/get_agent_agent_versions_agent_version_summary_guardrail_configuration.dart';

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
  final List<GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>?
      guardrailConfigurations;

  /// Time at which the version was last updated.
  final String updatedAt;

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
    final map = <String, dynamic>{};
    map['agentName'] = agentName;
    map['agentStatus'] = agentStatus;
    map['agentVersion'] = agentVersion;
    map['createdAt'] = createdAt;
    map['description'] = description;
    final guardrailConfigurationsValue = guardrailConfigurations;
    if (guardrailConfigurationsValue != null) {
      map['guardrailConfigurations'] = Input.encodeList<
              GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration,
              Map<String, dynamic>>(
          guardrailConfigurationsValue, (value) => value.toMap());
    }
    map['updatedAt'] = updatedAt;
    return map;
  }

  factory GetAgentAgentVersionsAgentVersionSummary.fromMap(
      Map<String, dynamic> map) {
    return GetAgentAgentVersionsAgentVersionSummary(
      agentName: map['agentName'] as String,
      agentStatus: map['agentStatus'] as String,
      agentVersion: map['agentVersion'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      guardrailConfigurations: map['guardrailConfigurations'] == null
          ? null
          : Input.decodeList<
                  GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration>(
              map['guardrailConfigurations'],
              (value) =>
                  GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] as String,
    );
  }
}
