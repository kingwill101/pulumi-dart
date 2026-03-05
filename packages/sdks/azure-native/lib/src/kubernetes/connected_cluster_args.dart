// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_profile.dart';
import 'arc_agent_profile.dart';
import 'connected_cluster_identity.dart';

/// {@template pulumi_kubernetes_connected_cluster_args_doc}
/// The set of arguments for ConnectedCluster.
/// {@endtemplate}
/// {@macro pulumi_kubernetes_connected_cluster_args_doc}
class ConnectedClusterArgs {
  /// AAD profile for the connected cluster.
  final pulumi.Input<AadProfile>? aadProfile;
  /// Base64 encoded public certificate used by the agent to do the initial handshake to the backend services in Azure.
  final pulumi.Input<String> agentPublicKeyCertificate;
  /// Arc agentry configuration for the provisioned cluster.
  final pulumi.Input<ArcAgentProfile>? arcAgentProfile;
  /// Indicates whether Azure Hybrid Benefit is opted in
  final pulumi.Input<String>? azureHybridBenefit;
  /// The name of the Kubernetes cluster on which get is called.
  final pulumi.Input<String>? clusterName;
  /// The Kubernetes distribution running on this connected cluster.
  final pulumi.Input<String>? distribution;
  /// The Kubernetes distribution version on this connected cluster.
  final pulumi.Input<String>? distributionVersion;
  /// The identity of the connected cluster.
  final pulumi.Input<ConnectedClusterIdentity> identity;
  /// The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  final pulumi.Input<String>? infrastructure;
  /// The kind of connected cluster.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource id of the private link scope this connected cluster is assigned to, if any.
  final pulumi.Input<String>? privateLinkScopeResourceId;
  /// Property which describes the state of private link on a connected cluster resource.
  final pulumi.Input<String>? privateLinkState;
  /// Provisioning state of the connected cluster resource.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectedClusterArgs].
  /// [aadProfile] AAD profile for the connected cluster.
  /// [agentPublicKeyCertificate] Base64 encoded public certificate used by the agent to do the initial handshake to the backend services in Azure.
  /// [arcAgentProfile] Arc agentry configuration for the provisioned cluster.
  /// [azureHybridBenefit] Indicates whether Azure Hybrid Benefit is opted in
  /// [clusterName] The name of the Kubernetes cluster on which get is called.
  /// [distribution] The Kubernetes distribution running on this connected cluster.
  /// [distributionVersion] The Kubernetes distribution version on this connected cluster.
  /// [identity] The identity of the connected cluster.
  /// [infrastructure] The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  /// [kind] The kind of connected cluster.
  /// [location] The geo-location where the resource lives
  /// [privateLinkScopeResourceId] The resource id of the private link scope this connected cluster is assigned to, if any.
  /// [privateLinkState] Property which describes the state of private link on a connected cluster resource.
  /// [provisioningState] Provisioning state of the connected cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConnectedClusterArgs({
    this.aadProfile,
    required this.agentPublicKeyCertificate,
    this.arcAgentProfile,
    this.azureHybridBenefit,
    this.clusterName,
    this.distribution,
    this.distributionVersion,
    required this.identity,
    this.infrastructure,
    this.kind,
    this.location,
    this.privateLinkScopeResourceId,
    this.privateLinkState,
    this.provisioningState,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?pulumi.Input.mapOptionalInputValue<AadProfile, Map<String, dynamic>>(aadProfile, (value) => value.toMap()),
      'agentPublicKeyCertificate': agentPublicKeyCertificate,
      'arcAgentProfile': ?pulumi.Input.mapOptionalInputValue<ArcAgentProfile, Map<String, dynamic>>(arcAgentProfile, (value) => value.toMap()),
      'azureHybridBenefit': ?azureHybridBenefit,
      'clusterName': ?clusterName,
      'distribution': ?distribution,
      'distributionVersion': ?distributionVersion,
      'identity': pulumi.Input.mapInputValue<ConnectedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructure': ?infrastructure,
      'kind': ?kind,
      'location': ?location,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'privateLinkState': ?privateLinkState,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConnectedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedClusterArgs(
      aadProfile: (() { final guardedValue = map['aadProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AadProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentPublicKeyCertificate: pulumi.Input.fromValue(map['agentPublicKeyCertificate'] as String),
      arcAgentProfile: (() { final guardedValue = map['arcAgentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArcAgentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureHybridBenefit: (() { final guardedValue = map['azureHybridBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionVersion: (() { final guardedValue = map['distributionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: pulumi.Input.fromValue(ConnectedClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkState: (() { final guardedValue = map['privateLinkState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

