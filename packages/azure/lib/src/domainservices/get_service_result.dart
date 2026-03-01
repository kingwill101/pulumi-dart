// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_notification.dart';
import 'get_service_replica_set.dart';
import 'get_service_secure_ldap.dart';
import 'get_service_security.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// A unique ID for the managed domain deployment.
  final String deploymentId;
  /// The forest type used by the managed domain. One of `ResourceTrusting`, for a _Resource Forest_, or blank, for a _User Forest_.
  final String domainConfigurationType;
  /// The Active Directory domain of the Domain Service. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations.
  final String domainName;
  /// Whether group-based filtered sync (also called scoped synchronisation) is enabled.
  final bool filteredSyncEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location in which the replica set resides.
  final String location;
  final String name;
  /// A `notifications` block as defined below.
  final List<GetServiceNotification> notifications;
  /// One or more `replica_set` blocks as defined below.
  final List<GetServiceReplicaSet> replicaSets;
  final String resourceGroupName;
  final String resourceId;
  /// A `secure_ldap` block as defined below.
  final List<GetServiceSecureLdap> secureLdaps;
  /// A `security` block as defined below.
  final List<GetServiceSecurity> securities;
  /// The SKU of the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  final String sku;
  final String syncOwner;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  final String tenantId;
  final int version;

  /// Creates a new [GetServiceResult].
  /// [deploymentId] A unique ID for the managed domain deployment.
  /// [domainConfigurationType] The forest type used by the managed domain. One of `ResourceTrusting`, for a _Resource Forest_, or blank, for a _User Forest_.
  /// [domainName] The Active Directory domain of the Domain Service. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations.
  /// [filteredSyncEnabled] Whether group-based filtered sync (also called scoped synchronisation) is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location in which the replica set resides.
  /// [name] Required.
  /// [notifications] A `notifications` block as defined below.
  /// [replicaSets] One or more `replica_set` blocks as defined below.
  /// [resourceGroupName] Required.
  /// [resourceId] Required.
  /// [secureLdaps] A `secure_ldap` block as defined below.
  /// [securities] A `security` block as defined below.
  /// [sku] The SKU of the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  /// [syncOwner] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantId] Required.
  /// [version] Required.
  GetServiceResult({
    required this.deploymentId,
    required this.domainConfigurationType,
    required this.domainName,
    required this.filteredSyncEnabled,
    required this.id,
    required this.location,
    required this.name,
    required this.notifications,
    required this.replicaSets,
    required this.resourceGroupName,
    required this.resourceId,
    required this.secureLdaps,
    required this.securities,
    required this.sku,
    required this.syncOwner,
    this.tags,
    required this.tenantId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': deploymentId,
      'domainConfigurationType': domainConfigurationType,
      'domainName': domainName,
      'filteredSyncEnabled': filteredSyncEnabled,
      'id': id,
      'location': location,
      'name': name,
      'notifications': pulumi.Input.encodeList<GetServiceNotification, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'replicaSets': pulumi.Input.encodeList<GetServiceReplicaSet, Map<String, dynamic>>(replicaSets, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
      'secureLdaps': pulumi.Input.encodeList<GetServiceSecureLdap, Map<String, dynamic>>(secureLdaps, (value) => value.toMap()),
      'securities': pulumi.Input.encodeList<GetServiceSecurity, Map<String, dynamic>>(securities, (value) => value.toMap()),
      'sku': sku,
      'syncOwner': syncOwner,
      'tags': ?tags,
      'tenantId': tenantId,
      'version': version,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      deploymentId: map['deploymentId'] as String,
      domainConfigurationType: map['domainConfigurationType'] as String,
      domainName: map['domainName'] as String,
      filteredSyncEnabled: map['filteredSyncEnabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      notifications: pulumi.Input.decodeList<GetServiceNotification>(map['notifications'], (value) => GetServiceNotification.fromMap((value as Map).cast<String, dynamic>())),
      replicaSets: pulumi.Input.decodeList<GetServiceReplicaSet>(map['replicaSets'], (value) => GetServiceReplicaSet.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] as String,
      secureLdaps: pulumi.Input.decodeList<GetServiceSecureLdap>(map['secureLdaps'], (value) => GetServiceSecureLdap.fromMap((value as Map).cast<String, dynamic>())),
      securities: pulumi.Input.decodeList<GetServiceSecurity>(map['securities'], (value) => GetServiceSecurity.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] as String,
      syncOwner: map['syncOwner'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
      version: map['version'] as int,
    );
  }
}

