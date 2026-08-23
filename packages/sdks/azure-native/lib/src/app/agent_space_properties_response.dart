// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_compliance_status_response.dart';
import 'agent_space_policies_response.dart';

/// Agent Space specific properties
class AgentSpacePropertiesResponse {
  /// Compliance status of the Agent Space
  final pulumi.Input<AgentSpaceComplianceStatusResponse> complianceStatus;
  /// Current number of agents in the Agent Space
  final pulumi.Input<int> currentAgentCount;
  /// Description of the Agent Space
  final pulumi.Input<String>? description;
  /// Timestamp of the last policy propagation to agents in this Agent Space
  final pulumi.Input<String> lastPolicyPropagation;
  /// Maximum number of agents allowed in the Agent Space
  final pulumi.Input<int>? maxAgentCount;
  /// List of agents referencing the Agent Space
  final pulumi.Input<List<String>> memberAgents;
  /// Policy configurations for the Agent Space
  final pulumi.Input<AgentSpacePoliciesResponse>? policies;
  /// Provisioning state of the Agent Space
  final pulumi.Input<String> provisioningState;
  /// Universal unique ID (UUID) of the Service Tree associated with this Agent Space
  final pulumi.Input<String>? serviceTreeId;

  /// Creates a new [AgentSpacePropertiesResponse].
  /// [complianceStatus] Compliance status of the Agent Space
  /// [currentAgentCount] Current number of agents in the Agent Space
  /// [description] Description of the Agent Space
  /// [lastPolicyPropagation] Timestamp of the last policy propagation to agents in this Agent Space
  /// [maxAgentCount] Maximum number of agents allowed in the Agent Space
  /// [memberAgents] List of agents referencing the Agent Space
  /// [policies] Policy configurations for the Agent Space
  /// [provisioningState] Provisioning state of the Agent Space
  /// [serviceTreeId] Universal unique ID (UUID) of the Service Tree associated with this Agent Space
  const AgentSpacePropertiesResponse({
    required this.complianceStatus,
    required this.currentAgentCount,
    this.description,
    required this.lastPolicyPropagation,
    this.maxAgentCount,
    required this.memberAgents,
    this.policies,
    required this.provisioningState,
    this.serviceTreeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStatus': pulumi.Input.mapInputValue<AgentSpaceComplianceStatusResponse, Map<String, dynamic>>(complianceStatus, (value) => value.toMap()),
      'currentAgentCount': currentAgentCount,
      'description': ?description,
      'lastPolicyPropagation': lastPolicyPropagation,
      'maxAgentCount': ?maxAgentCount,
      'memberAgents': memberAgents,
      'policies': ?pulumi.Input.mapOptionalInputValue<AgentSpacePoliciesResponse, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceTreeId': ?serviceTreeId,
    };
  }

  factory AgentSpacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentSpacePropertiesResponse(
      complianceStatus: pulumi.Input.fromValue(AgentSpaceComplianceStatusResponse.fromMap((map['complianceStatus']! as Map).cast<String, dynamic>())),
      currentAgentCount: pulumi.Input.fromValue(map['currentAgentCount'] as int),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastPolicyPropagation: pulumi.Input.fromValue(map['lastPolicyPropagation'] as String),
      maxAgentCount: (() { final guardedValue = map['maxAgentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memberAgents: pulumi.Input.fromValue((map['memberAgents'] as List).cast<String>()),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentSpacePoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceTreeId: (() { final guardedValue = map['serviceTreeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
