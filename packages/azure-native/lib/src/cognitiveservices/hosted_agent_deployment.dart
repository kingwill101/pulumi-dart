// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version.dart';
import 'versioned_agent_reference.dart';

/// Represents a hosted agent deployment where the underlying infrastructure is owned by the platform.
class HostedAgentDeployment {
  /// Returns a flat list of agent:version deployed in this deployment.
  final List<VersionedAgentReference>? agents;
  /// Gets or sets the unique identifier of the deployment.
  final String? deploymentId;
  /// Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// Expected value is 'Hosted'.
  final String deploymentType;
  /// The asset description text.
  final String? description;
  /// Gets or sets the display name of the deployment.
  final String? displayName;
  /// Gets or sets the maximum number of replicas for this hosted deployment.
  final int? maxReplicas;
  /// Gets or sets the minimum number of replicas for this hosted deployment.
  final int? minReplicas;
  /// Gets or sets the supported protocol types and versions exposed by this deployment.
  final List<AgentProtocolVersion>? protocols;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final String? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

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
  HostedAgentDeployment({
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
      'agents': ?agents == null ? null : pulumi.Input.encodeList<VersionedAgentReference, Map<String, dynamic>>(agents!, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'deploymentType': deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<AgentProtocolVersion, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory HostedAgentDeployment.fromMap(Map<String, dynamic> map) {
    return HostedAgentDeployment(
      agents: map['agents'] == null ? null : pulumi.Input.decodeList<VersionedAgentReference>(map['agents'], (value) => VersionedAgentReference.fromMap((value as Map).cast<String, dynamic>())),
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      deploymentType: map['deploymentType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<AgentProtocolVersion>(map['protocols'], (value) => AgentProtocolVersion.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

