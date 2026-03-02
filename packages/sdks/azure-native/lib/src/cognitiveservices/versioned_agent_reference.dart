// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type modeling a reference to a version of an agent definition.
class VersionedAgentReference {
  /// Gets the agent's unique identifier within the organization (subscription).
  final pulumi.Input<String>? agentId;
  /// Gets the agent's name (unique within the project/app).
  final pulumi.Input<String>? agentName;
  /// Gets the agent's version (unique for each agent lineage).
  final pulumi.Input<String>? agentVersion;

  /// Creates a new [VersionedAgentReference].
  /// [agentId] Gets the agent's unique identifier within the organization (subscription).
  /// [agentName] Gets the agent's name (unique within the project/app).
  /// [agentVersion] Gets the agent's version (unique for each agent lineage).
  VersionedAgentReference({
    this.agentId,
    this.agentName,
    this.agentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentName': ?agentName,
      'agentVersion': ?agentVersion,
    };
  }

  factory VersionedAgentReference.fromMap(Map<String, dynamic> map) {
    return VersionedAgentReference(
      agentId: map['agentId'] == null ? null : (map['agentId'] as String).input(),
      agentName: map['agentName'] == null ? null : (map['agentName'] as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion'] as String).input(),
    );
  }
}

