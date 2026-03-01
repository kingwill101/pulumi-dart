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
    pulumi.Output<String>? aadApplicationObjectId,
    pulumi.Output<String>? aadClientId,
    pulumi.Output<String>? aadServicePrincipalObjectId,
    pulumi.Output<String>? aadTenantId,
    pulumi.Output<String>? cloudManagementEndpoint,
    pulumi.Output<String>? clusterName,
    pulumi.Output<ClusterDesiredProperties>? desiredProperties,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SoftwareAssuranceProperties>? softwareAssuranceProperties,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
    pulumi.Output<List<String>>? userAssignedIdentities,
  }) :
      aadApplicationObjectId = pulumi.Input.asOptionalInput<String>(aadApplicationObjectId),
      aadClientId = pulumi.Input.asOptionalInput<String>(aadClientId),
      aadServicePrincipalObjectId = pulumi.Input.asOptionalInput<String>(aadServicePrincipalObjectId),
      aadTenantId = pulumi.Input.asOptionalInput<String>(aadTenantId),
      cloudManagementEndpoint = pulumi.Input.asOptionalInput<String>(cloudManagementEndpoint),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      desiredProperties = pulumi.Input.asOptionalInput<ClusterDesiredProperties>(desiredProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      softwareAssuranceProperties = pulumi.Input.asOptionalInput<SoftwareAssuranceProperties>(softwareAssuranceProperties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type),
      userAssignedIdentities = pulumi.Input.asOptionalInput<List<String>>(userAssignedIdentities);

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
      aadApplicationObjectId: map['aadApplicationObjectId'] == null ? null : pulumi.Output.create<String>(map['aadApplicationObjectId'] as String),
      aadClientId: map['aadClientId'] == null ? null : pulumi.Output.create<String>(map['aadClientId'] as String),
      aadServicePrincipalObjectId: map['aadServicePrincipalObjectId'] == null ? null : pulumi.Output.create<String>(map['aadServicePrincipalObjectId'] as String),
      aadTenantId: map['aadTenantId'] == null ? null : pulumi.Output.create<String>(map['aadTenantId'] as String),
      cloudManagementEndpoint: map['cloudManagementEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudManagementEndpoint'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      desiredProperties: map['desiredProperties'] == null ? null : pulumi.Output.create<ClusterDesiredProperties>(ClusterDesiredProperties.fromMap((map['desiredProperties'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      softwareAssuranceProperties: map['softwareAssuranceProperties'] == null ? null : pulumi.Output.create<SoftwareAssuranceProperties>(SoftwareAssuranceProperties.fromMap((map['softwareAssuranceProperties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Output.create<List<String>>((map['userAssignedIdentities'] as List).cast<String>()),
    );
  }
}

