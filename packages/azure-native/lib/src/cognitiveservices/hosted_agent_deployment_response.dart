// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version_response.dart';
import 'versioned_agent_reference_response.dart';

/// Represents a hosted agent deployment where the underlying infrastructure is owned by the platform.
class HostedAgentDeploymentResponse {
  /// Returns a flat list of agent:version deployed in this deployment.
  final List<VersionedAgentReferenceResponse>? agents;
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
  final List<AgentProtocolVersionResponse>? protocols;
  /// Gets or sets the provisioning state of the agent deployment.
  final String provisioningState;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final String? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [HostedAgentDeploymentResponse].
  /// [agents] Returns a flat list of agent:version deployed in this deployment.
  /// [deploymentId] Gets or sets the unique identifier of the deployment.
  /// [deploymentType] Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// [description] The asset description text.
  /// [displayName] Gets or sets the display name of the deployment.
  /// [maxReplicas] Gets or sets the maximum number of replicas for this hosted deployment.
  /// [minReplicas] Gets or sets the minimum number of replicas for this hosted deployment.
  /// [protocols] Gets or sets the supported protocol types and versions exposed by this deployment.
  /// [provisioningState] Gets or sets the provisioning state of the agent deployment.
  /// [state] Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  HostedAgentDeploymentResponse({
    this.agents,
    this.deploymentId,
    required this.deploymentType,
    this.description,
    this.displayName,
    this.maxReplicas,
    this.minReplicas,
    this.protocols,
    required this.provisioningState,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?agents == null ? null : pulumi.Input.encodeList<VersionedAgentReferenceResponse, Map<String, dynamic>>(agents!, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'deploymentType': deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<AgentProtocolVersionResponse, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory HostedAgentDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return HostedAgentDeploymentResponse(
      agents: map['agents'] == null ? null : pulumi.Input.decodeList<VersionedAgentReferenceResponse>(map['agents'], (value) => VersionedAgentReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      deploymentType: map['deploymentType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<AgentProtocolVersionResponse>(map['protocols'], (value) => AgentProtocolVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

