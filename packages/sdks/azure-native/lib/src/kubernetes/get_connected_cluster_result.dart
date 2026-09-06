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
  final String? agentPublicKeyCertificate;
  /// Version of the agent running on the connected cluster resource
  final String? agentVersion;
  /// Arc agentry configuration for the provisioned cluster.
  final ArcAgentProfileResponse? arcAgentProfile;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Indicates whether Azure Hybrid Benefit is opted in
  final String? azureHybridBenefit;
  /// Represents the connectivity status of the connected cluster.
  final String? connectivityStatus;
  /// The Kubernetes distribution running on this connected cluster.
  final String? distribution;
  /// The Kubernetes distribution version on this connected cluster.
  final String? distributionVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the connected cluster.
  final ConnectedClusterIdentityResponse? identity;
  /// The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  final String? infrastructure;
  /// The kind of connected cluster.
  final String? kind;
  /// The Kubernetes version of the connected cluster resource
  final String? kubernetesVersion;
  /// Time representing the last instance when heart beat was received from the cluster
  final String? lastConnectivityTime;
  /// The geo-location where the resource lives
  final String? location;
  /// Expiration time of the managed identity certificate
  final String? managedIdentityCertificateExpirationTime;
  /// More properties related to the Connected Cluster
  final Map<String, String>? miscellaneousProperties;
  /// The name of the resource
  final String? name;
  /// Connected cluster offering
  final String? offering;
  /// The resource id of the private link scope this connected cluster is assigned to, if any.
  final String? privateLinkScopeResourceId;
  /// Property which describes the state of private link on a connected cluster resource.
  final String? privateLinkState;
  /// Provisioning state of the connected cluster resource.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Number of CPU cores present in the connected cluster resource
  final int? totalCoreCount;
  /// Number of nodes present in the connected cluster resource
  final int? totalNodeCount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  GetConnectedClusterResult({
    this.aadProfile,
    this.agentPublicKeyCertificate,
    this.agentVersion,
    this.arcAgentProfile,
    this.azureApiVersion,
    String? azureHybridBenefit,
    this.connectivityStatus,
    this.distribution,
    this.distributionVersion,
    this.id,
    this.identity,
    this.infrastructure,
    this.kind,
    this.kubernetesVersion,
    this.lastConnectivityTime,
    this.location,
    this.managedIdentityCertificateExpirationTime,
    this.miscellaneousProperties,
    this.name,
    this.offering,
    this.privateLinkScopeResourceId,
    String? privateLinkState,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.totalCoreCount,
    this.totalNodeCount,
    this.type,
  }) : azureHybridBenefit = azureHybridBenefit ?? 'NotApplicable', privateLinkState = privateLinkState ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?aadProfile?.toMap(),
      'agentPublicKeyCertificate': ?agentPublicKeyCertificate,
      'agentVersion': ?agentVersion,
      'arcAgentProfile': ?arcAgentProfile?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'azureHybridBenefit': ?azureHybridBenefit,
      'connectivityStatus': ?connectivityStatus,
      'distribution': ?distribution,
      'distributionVersion': ?distributionVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'infrastructure': ?infrastructure,
      'kind': ?kind,
      'kubernetesVersion': ?kubernetesVersion,
      'lastConnectivityTime': ?lastConnectivityTime,
      'location': ?location,
      'managedIdentityCertificateExpirationTime': ?managedIdentityCertificateExpirationTime,
      'miscellaneousProperties': ?miscellaneousProperties,
      'name': ?name,
      'offering': ?offering,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'privateLinkState': ?privateLinkState,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'totalCoreCount': ?totalCoreCount,
      'totalNodeCount': ?totalNodeCount,
      'type': ?type,
    };
  }

  factory GetConnectedClusterResult.fromMap(Map<String, dynamic> map) {
    return GetConnectedClusterResult(
      aadProfile: (() { final guardedValue = map['aadProfile']; if (guardedValue == null) return null; return AadProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentPublicKeyCertificate: (() { final guardedValue = map['agentPublicKeyCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcAgentProfile: (() { final guardedValue = map['arcAgentProfile']; if (guardedValue == null) return null; return ArcAgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureHybridBenefit: (() { final guardedValue = map['azureHybridBenefit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityStatus: (() { final guardedValue = map['connectivityStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionVersion: (() { final guardedValue = map['distributionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ConnectedClusterIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastConnectivityTime: (() { final guardedValue = map['lastConnectivityTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedIdentityCertificateExpirationTime: (() { final guardedValue = map['managedIdentityCertificateExpirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      miscellaneousProperties: (() { final guardedValue = map['miscellaneousProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offering: (() { final guardedValue = map['offering']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkState: (() { final guardedValue = map['privateLinkState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalCoreCount: (() { final guardedValue = map['totalCoreCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      totalNodeCount: (() { final guardedValue = map['totalNodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
