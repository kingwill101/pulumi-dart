// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version_response.dart';
import 'versioned_agent_reference_response.dart';

/// Represents a hosted agent deployment where the underlying infrastructure is owned by the platform.
class HostedAgentDeploymentResponse {
  /// Returns a flat list of agent:version deployed in this deployment.
  final pulumi.Input<List<VersionedAgentReferenceResponse>>? agents;
  /// Gets or sets the unique identifier of the deployment.
  final pulumi.Input<String>? deploymentId;
  /// Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// Expected value is 'Hosted'.
  final pulumi.Input<String> deploymentType;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Gets or sets the display name of the deployment.
  final pulumi.Input<String>? displayName;
  /// Gets or sets the maximum number of replicas for this hosted deployment.
  final pulumi.Input<int>? maxReplicas;
  /// Gets or sets the minimum number of replicas for this hosted deployment.
  final pulumi.Input<int>? minReplicas;
  /// Gets or sets the supported protocol types and versions exposed by this deployment.
  final pulumi.Input<List<AgentProtocolVersionResponse>>? protocols;
  /// Gets or sets the provisioning state of the agent deployment.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final pulumi.Input<String>? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'agents': ?pulumi.Input.mapOptionalInputValue<List<VersionedAgentReferenceResponse>, List<Map<String, dynamic>>>(agents, (value) => pulumi.Input.encodeList<VersionedAgentReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentId': ?deploymentId,
      'deploymentType': deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AgentProtocolVersionResponse>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AgentProtocolVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory HostedAgentDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return HostedAgentDeploymentResponse(
      agents: map['agents'] == null ? null : (pulumi.Input.decodeList<VersionedAgentReferenceResponse>(map['agents']!, (value) => VersionedAgentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId']! as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas']! as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas']! as int).input(),
      protocols: map['protocols'] == null ? null : (pulumi.Input.decodeList<AgentProtocolVersionResponse>(map['protocols']!, (value) => AgentProtocolVersionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

