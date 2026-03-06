// ignore_for_file: unused_element, unnecessary_cast

import 'aad_profile_response.dart';
import 'arc_agent_profile_response.dart';
import 'connected_cluster_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectedCluster.
class GetConnectedClusterResult {
  /// AAD profile for the connected cluster.
  final AadProfileResponse? aadProfile;
  /// Base64 encoded public certificate used by the agent to do the initial handshake to the backend services in Azure.
  final String agentPublicKeyCertificate;
  /// Version of the agent running on the connected cluster resource
  final String agentVersion;
  /// Arc agentry configuration for the provisioned cluster.
  final ArcAgentProfileResponse? arcAgentProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates whether Azure Hybrid Benefit is opted in
  final String? azureHybridBenefit;
  /// Represents the connectivity status of the connected cluster.
  final String connectivityStatus;
  /// The Kubernetes distribution running on this connected cluster.
  final String? distribution;
  /// The Kubernetes distribution version on this connected cluster.
  final String? distributionVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the connected cluster.
  final ConnectedClusterIdentityResponse identity;
  /// The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  final String? infrastructure;
  /// The kind of connected cluster.
  final String? kind;
  /// The Kubernetes version of the connected cluster resource
  final String kubernetesVersion;
  /// Time representing the last instance when heart beat was received from the cluster
  final String lastConnectivityTime;
  /// The geo-location where the resource lives
  final String location;
  /// Expiration time of the managed identity certificate
  final String managedIdentityCertificateExpirationTime;
  /// More properties related to the Connected Cluster
  final Map<String, String> miscellaneousProperties;
  /// The name of the resource
  final String name;
  /// Connected cluster offering
  final String offering;
  /// The resource id of the private link scope this connected cluster is assigned to, if any.
  final String? privateLinkScopeResourceId;
  /// Property which describes the state of private link on a connected cluster resource.
  final String? privateLinkState;
  /// Provisioning state of the connected cluster resource.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Number of CPU cores present in the connected cluster resource
  final int totalCoreCount;
  /// Number of nodes present in the connected cluster resource
  final int totalNodeCount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectedClusterResult].
  /// [aadProfile] AAD profile for the connected cluster.
  /// [agentPublicKeyCertificate] Base64 encoded public certificate used by the agent to do the initial handshake to the backend services in Azure.
  /// [agentVersion] Version of the agent running on the connected cluster resource
  /// [arcAgentProfile] Arc agentry configuration for the provisioned cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureHybridBenefit] Indicates whether Azure Hybrid Benefit is opted in
  /// [connectivityStatus] Represents the connectivity status of the connected cluster.
  /// [distribution] The Kubernetes distribution running on this connected cluster.
  /// [distributionVersion] The Kubernetes distribution version on this connected cluster.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the connected cluster.
  /// [infrastructure] The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  /// [kind] The kind of connected cluster.
  /// [kubernetesVersion] The Kubernetes version of the connected cluster resource
  /// [lastConnectivityTime] Time representing the last instance when heart beat was received from the cluster
  /// [location] The geo-location where the resource lives
  /// [managedIdentityCertificateExpirationTime] Expiration time of the managed identity certificate
  /// [miscellaneousProperties] More properties related to the Connected Cluster
  /// [name] The name of the resource
  /// [offering] Connected cluster offering
  /// [privateLinkScopeResourceId] The resource id of the private link scope this connected cluster is assigned to, if any.
  /// [privateLinkState] Property which describes the state of private link on a connected cluster resource.
  /// [provisioningState] Provisioning state of the connected cluster resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [tags] Resource tags.
  /// [totalCoreCount] Number of CPU cores present in the connected cluster resource
  /// [totalNodeCount] Number of nodes present in the connected cluster resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConnectedClusterResult({
    this.aadProfile,
    required this.agentPublicKeyCertificate,
    required this.agentVersion,
    this.arcAgentProfile,
    required this.azureApiVersion,
    this.azureHybridBenefit,
    required this.connectivityStatus,
    this.distribution,
    this.distributionVersion,
    required this.id,
    required this.identity,
    this.infrastructure,
    this.kind,
    required this.kubernetesVersion,
    required this.lastConnectivityTime,
    required this.location,
    required this.managedIdentityCertificateExpirationTime,
    required this.miscellaneousProperties,
    required this.name,
    required this.offering,
    this.privateLinkScopeResourceId,
    this.privateLinkState,
    this.provisioningState,
    required this.systemData,
    this.tags,
    required this.totalCoreCount,
    required this.totalNodeCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?aadProfile?.toMap(),
      'agentPublicKeyCertificate': agentPublicKeyCertificate,
      'agentVersion': agentVersion,
      'arcAgentProfile': ?arcAgentProfile?.toMap(),
      'azureApiVersion': azureApiVersion,
      'azureHybridBenefit': ?azureHybridBenefit,
      'connectivityStatus': connectivityStatus,
      'distribution': ?distribution,
      'distributionVersion': ?distributionVersion,
      'id': id,
      'identity': identity.toMap(),
      'infrastructure': ?infrastructure,
      'kind': ?kind,
      'kubernetesVersion': kubernetesVersion,
      'lastConnectivityTime': lastConnectivityTime,
      'location': location,
      'managedIdentityCertificateExpirationTime': managedIdentityCertificateExpirationTime,
      'miscellaneousProperties': miscellaneousProperties,
      'name': name,
      'offering': offering,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'privateLinkState': ?privateLinkState,
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalCoreCount': totalCoreCount,
      'totalNodeCount': totalNodeCount,
      'type': type,
    };
  }

  factory GetConnectedClusterResult.fromMap(Map<String, dynamic> map) {
    return GetConnectedClusterResult(
      aadProfile: (() { final guardedValue = map['aadProfile']; if (guardedValue == null) return null; return AadProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentPublicKeyCertificate: map['agentPublicKeyCertificate'] as String,
      agentVersion: map['agentVersion'] as String,
      arcAgentProfile: (() { final guardedValue = map['arcAgentProfile']; if (guardedValue == null) return null; return ArcAgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureHybridBenefit: (() { final guardedValue = map['azureHybridBenefit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityStatus: map['connectivityStatus'] as String,
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionVersion: (() { final guardedValue = map['distributionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: ConnectedClusterIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: map['kubernetesVersion'] as String,
      lastConnectivityTime: map['lastConnectivityTime'] as String,
      location: map['location'] as String,
      managedIdentityCertificateExpirationTime: map['managedIdentityCertificateExpirationTime'] as String,
      miscellaneousProperties: (map['miscellaneousProperties'] as Map).cast<String, String>(),
      name: map['name'] as String,
      offering: map['offering'] as String,
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkState: (() { final guardedValue = map['privateLinkState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalCoreCount: map['totalCoreCount'] as int,
      totalNodeCount: map['totalNodeCount'] as int,
      type: map['type'] as String,
    );
  }
}

