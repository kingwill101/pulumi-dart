// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_desired_properties.dart';
import 'software_assurance_properties.dart';

/// {@template pulumi_azurestackhci_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_cluster_args_doc}
class ClusterArgs {
  /// Object id of cluster AAD identity.
  final pulumi.Input<String>? aadApplicationObjectId;
  /// App id of cluster AAD identity.
  final pulumi.Input<String>? aadClientId;
  /// Id of cluster identity service principal.
  final pulumi.Input<String>? aadServicePrincipalObjectId;
  /// Tenant id of cluster AAD identity.
  final pulumi.Input<String>? aadTenantId;
  /// Endpoint configured for management from the Azure portal.
  final pulumi.Input<String>? cloudManagementEndpoint;
  /// The name of the cluster.
  final pulumi.Input<String>? clusterName;
  /// Desired properties of the cluster.
  final pulumi.Input<ClusterDesiredProperties>? desiredProperties;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Software Assurance properties of the cluster.
  final pulumi.Input<SoftwareAssuranceProperties>? softwareAssuranceProperties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  final pulumi.Input<String> type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ClusterArgs].
  /// [aadApplicationObjectId] Object id of cluster AAD identity.
  /// [aadClientId] App id of cluster AAD identity.
  /// [aadServicePrincipalObjectId] Id of cluster identity service principal.
  /// [aadTenantId] Tenant id of cluster AAD identity.
  /// [cloudManagementEndpoint] Endpoint configured for management from the Azure portal.
  /// [clusterName] The name of the cluster.
  /// [desiredProperties] Desired properties of the cluster.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [softwareAssuranceProperties] Software Assurance properties of the cluster.
  /// [tags] Resource tags.
  /// [type] Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  ClusterArgs({
    this.aadApplicationObjectId,
    this.aadClientId,
    this.aadServicePrincipalObjectId,
    this.aadTenantId,
    this.cloudManagementEndpoint,
    this.clusterName,
    this.desiredProperties,
    this.location,
    required this.resourceGroupName,
    this.softwareAssuranceProperties,
    this.tags,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadApplicationObjectId': ?aadApplicationObjectId,
      'aadClientId': ?aadClientId,
      'aadServicePrincipalObjectId': ?aadServicePrincipalObjectId,
      'aadTenantId': ?aadTenantId,
      'cloudManagementEndpoint': ?cloudManagementEndpoint,
      'clusterName': ?clusterName,
      'desiredProperties': ?pulumi.Input.mapOptionalInputValue<ClusterDesiredProperties, Map<String, dynamic>>(desiredProperties, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'softwareAssuranceProperties': ?pulumi.Input.mapOptionalInputValue<SoftwareAssuranceProperties, Map<String, dynamic>>(softwareAssuranceProperties, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      aadApplicationObjectId: (() { final guardedValue = map['aadApplicationObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadClientId: (() { final guardedValue = map['aadClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadServicePrincipalObjectId: (() { final guardedValue = map['aadServicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadTenantId: (() { final guardedValue = map['aadTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudManagementEndpoint: (() { final guardedValue = map['cloudManagementEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredProperties: (() { final guardedValue = map['desiredProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDesiredProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      softwareAssuranceProperties: (() { final guardedValue = map['softwareAssuranceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftwareAssuranceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

