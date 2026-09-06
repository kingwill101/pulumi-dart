// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version.dart';
import 'versioned_agent_reference.dart';

/// Represents a hosted agent deployment where the underlying infrastructure is owned by the platform.
class HostedAgentDeployment {
  /// Returns a flat list of agent:version deployed in this deployment.
  final pulumi.Input<List<VersionedAgentReference>?>? agents;
  /// Gets or sets the unique identifier of the deployment.
  final pulumi.Input<String?>? deploymentId;
  /// Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// Expected value is 'Hosted'.
  final pulumi.Input<String> deploymentType;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Gets or sets the display name of the deployment.
  final pulumi.Input<String?>? displayName;
  /// Gets or sets the maximum number of replicas for this hosted deployment.
  final pulumi.Input<int?>? maxReplicas;
  /// Gets or sets the minimum number of replicas for this hosted deployment.
  final pulumi.Input<int?>? minReplicas;
  /// Gets or sets the supported protocol types and versions exposed by this deployment.
  final pulumi.Input<List<AgentProtocolVersion>?>? protocols;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final pulumi.Input<dynamic>? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [HostedAgentDeployment].
  /// [agents] Returns a flat list of agent:version deployed in this deployment.
  /// [deploymentId] Gets or sets the unique identifier of the deployment.
  /// [deploymentType] Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// [description] The asset description text.
  /// [displayName] Gets or sets the display name of the deployment.
  /// [maxReplicas] Gets or sets the maximum number of replicas for this hosted deployment.
  /// [minReplicas] Gets or sets the minimum number of replicas for this hosted deployment.
  /// [protocols] Gets or sets the supported protocol types and versions exposed by this deployment.
  /// [state] Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  const HostedAgentDeployment({
    this.agents,
    this.deploymentId,
    required this.deploymentType,
    this.description,
    this.displayName,
    this.maxReplicas,
    this.minReplicas,
    this.protocols,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?pulumi.Input.mapOptionalInputValue<List<VersionedAgentReference>, List<Map<String, dynamic>>>(agents, (value) => pulumi.Input.encodeList<VersionedAgentReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentId': ?deploymentId,
      'deploymentType': deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AgentProtocolVersion>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AgentProtocolVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory HostedAgentDeployment.fromMap(Map<String, dynamic> map) {
    return HostedAgentDeployment(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VersionedAgentReference>(guardedValue, (value) => VersionedAgentReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentProtocolVersion>(guardedValue, (value) => AgentProtocolVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
