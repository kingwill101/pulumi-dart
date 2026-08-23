// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type modeling a reference to a version of an agent definition.
class AgentReferencePropertiesResponse {
  /// Gets the agent's unique identifier within the organization (subscription).
  final pulumi.Input<String>? agentId;
  /// Gets the agent's name (unique within the project/app).
  final pulumi.Input<String>? agentName;

  /// Creates a new [AgentReferencePropertiesResponse].
  /// [agentId] Gets the agent's unique identifier within the organization (subscription).
  /// [agentName] Gets the agent's name (unique within the project/app).
  const AgentReferencePropertiesResponse({
    this.agentId,
    this.agentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentName': ?agentName,
    };
  }

  factory AgentReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentReferencePropertiesResponse(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentName: (() { final guardedValue = map['agentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
