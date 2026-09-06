// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_policies.dart';

/// Agent Space specific properties
class AgentSpaceProperties {
  /// Description of the Agent Space
  final pulumi.Input<String?>? description;
  /// Maximum number of agents allowed in the Agent Space
  final pulumi.Input<int?>? maxAgentCount;
  /// Policy configurations for the Agent Space
  final pulumi.Input<AgentSpacePolicies?>? policies;
  /// Universal unique ID (UUID) of the Service Tree associated with this Agent Space
  final pulumi.Input<String?>? serviceTreeId;

  /// Creates a new [AgentSpaceProperties].
  /// [description] Description of the Agent Space
  /// [maxAgentCount] Maximum number of agents allowed in the Agent Space
  /// [policies] Policy configurations for the Agent Space
  /// [serviceTreeId] Universal unique ID (UUID) of the Service Tree associated with this Agent Space
  const AgentSpaceProperties({
    this.description,
    this.maxAgentCount,
    this.policies,
    this.serviceTreeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'maxAgentCount': ?maxAgentCount,
      'policies': ?pulumi.Input.mapOptionalInputValue<AgentSpacePolicies, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'serviceTreeId': ?serviceTreeId,
    };
  }

  factory AgentSpaceProperties.fromMap(Map<String, dynamic> map) {
    return AgentSpaceProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAgentCount: (() { final guardedValue = map['maxAgentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentSpacePolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceTreeId: (() { final guardedValue = map['serviceTreeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
