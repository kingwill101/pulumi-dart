// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version_response.dart';
import 'versioned_agent_reference_response.dart';

/// Represents a managed agent deployment where the underlying infrastructure is managed by the platform in the deployer's subscription.
class ManagedAgentDeploymentResponse {
  /// Returns a flat list of agent:version deployed in this deployment.
  final pulumi.Input<List<VersionedAgentReferenceResponse>>? agents;
  /// Gets or sets the unique identifier of the deployment.
  final pulumi.Input<String>? deploymentId;
  /// Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> deploymentType;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Gets or sets the display name of the deployment.
  final pulumi.Input<String>? displayName;
  /// Gets or sets the supported protocol types and versions exposed by this deployment.
  final pulumi.Input<List<AgentProtocolVersionResponse>>? protocols;
  /// Gets or sets the provisioning state of the agent deployment.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final pulumi.Input<String>? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedAgentDeploymentResponse].
  /// [agents] Returns a flat list of agent:version deployed in this deployment.
  /// [deploymentId] Gets or sets the unique identifier of the deployment.
  /// [deploymentType] Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// [description] The asset description text.
  /// [displayName] Gets or sets the display name of the deployment.
  /// [protocols] Gets or sets the supported protocol types and versions exposed by this deployment.
  /// [provisioningState] Gets or sets the provisioning state of the agent deployment.
  /// [state] Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ManagedAgentDeploymentResponse({
    this.agents,
    this.deploymentId,
    required this.deploymentType,
    this.description,
    this.displayName,
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
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AgentProtocolVersionResponse>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AgentProtocolVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory ManagedAgentDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return ManagedAgentDeploymentResponse(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VersionedAgentReferenceResponse>(guardedValue, (value) => VersionedAgentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentProtocolVersionResponse>(guardedValue, (value) => AgentProtocolVersionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

