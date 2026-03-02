// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_protocol_version.dart';
import 'versioned_agent_reference.dart';

/// Represents a managed agent deployment where the underlying infrastructure is managed by the platform in the deployer's subscription.
class ManagedAgentDeployment {
  /// Returns a flat list of agent:version deployed in this deployment.
  final pulumi.Input<List<VersionedAgentReference>>? agents;
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
  final pulumi.Input<List<AgentProtocolVersion>>? protocols;
  /// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  final pulumi.Input<String>? state;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedAgentDeployment].
  /// [agents] Returns a flat list of agent:version deployed in this deployment.
  /// [deploymentId] Gets or sets the unique identifier of the deployment.
  /// [deploymentType] Specifies the type of deployment for an agent, indicating how the underlying compute and network infrastructure is managed.
  /// [description] The asset description text.
  /// [displayName] Gets or sets the display name of the deployment.
  /// [protocols] Gets or sets the supported protocol types and versions exposed by this deployment.
  /// [state] Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ManagedAgentDeployment({
    this.agents,
    this.deploymentId,
    required this.deploymentType,
    this.description,
    this.displayName,
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
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AgentProtocolVersion>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AgentProtocolVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory ManagedAgentDeployment.fromMap(Map<String, dynamic> map) {
    return ManagedAgentDeployment(
      agents: map['agents'] == null ? null : (pulumi.Input.decodeList<VersionedAgentReference>(map['agents']!, (value) => VersionedAgentReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId']! as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      protocols: map['protocols'] == null ? null : (pulumi.Input.decodeList<AgentProtocolVersion>(map['protocols']!, (value) => AgentProtocolVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

