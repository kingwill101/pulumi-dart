// ignore_for_file: unused_element, unnecessary_cast

import '../workflow_template_placement_managed_cluster_config_gce_cluster_config_node_group_affinity/workflow_template_placement_managed_cluster_config_gce_cluster_config_node_group_affinity.dart';
import '../workflow_template_placement_managed_cluster_config_gce_cluster_config_reservation_affinity/workflow_template_placement_managed_cluster_config_gce_cluster_config_reservation_affinity.dart';
import '../workflow_template_placement_managed_cluster_config_gce_cluster_config_shielded_instance_config/workflow_template_placement_managed_cluster_config_gce_cluster_config_shielded_instance_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig {
  /// If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final bool? internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see [About VM metadata](https://cloud.google.com/compute/docs/metadata/overview)).
  final Map<String, String>? metadata;

  /// The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither `network_uri` nor `subnetwork_uri` is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see /regions/global/default` * `default`
  final String? network;

  /// Node Group Affinity for sole-tenant clusters.
  final WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity?
      nodeGroupAffinity;

  /// The type of IPv6 access for a cluster. Possible values: PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, INHERIT_FROM_SUBNETWORK, OUTBOUND, BIDIRECTIONAL
  final String? privateIpv6GoogleAccess;

  /// Reservation Affinity for consuming Zonal reservation.
  final WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity?
      reservationAffinity;

  /// The (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String? serviceAccount;

  /// The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: * https://www.googleapis.com/auth/cloud.useraccounts.readonly * https://www.googleapis.com/auth/devstorage.read_write * https://www.googleapis.com/auth/logging.write If no scopes are specified, the following defaults are also provided: * https://www.googleapis.com/auth/bigquery * https://www.googleapis.com/auth/bigtable.admin.table * https://www.googleapis.com/auth/bigtable.data * https://www.googleapis.com/auth/devstorage.full_control
  final List<String>? serviceAccountScopes;

  /// Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm). Structure defined below.
  final WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig?
      shieldedInstanceConfig;

  /// The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects//regions/us-east1/subnetworks/sub0` * `sub0`
  final String? subnetwork;

  /// The Compute Engine tags to add to all instances (see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)).
  final List<String>? tags;

  /// The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` * `us-central1-f`
  final String? zone;

  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig({
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.nodeGroupAffinity,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetwork,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final internalIpOnlyValue = internalIpOnly;
    if (internalIpOnlyValue != null) {
      map['internalIpOnly'] = internalIpOnlyValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nodeGroupAffinityValue = nodeGroupAffinity;
    if (nodeGroupAffinityValue != null) {
      map['nodeGroupAffinity'] = nodeGroupAffinityValue.toMap();
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = reservationAffinityValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final serviceAccountScopesValue = serviceAccountScopes;
    if (serviceAccountScopesValue != null) {
      map['serviceAccountScopes'] = serviceAccountScopesValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig(
      internalIpOnly:
          map['internalIpOnly'] == null ? null : map['internalIpOnly'] as bool,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      nodeGroupAffinity: map['nodeGroupAffinity'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity
              .fromMap(
                  (map['nodeGroupAffinity'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : map['privateIpv6GoogleAccess'] as String,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity
              .fromMap(
                  (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig
              .fromMap((map['shieldedInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
