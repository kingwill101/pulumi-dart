// ignore_for_file: unused_element, unnecessary_cast

import 'gce_cluster_config_private_ipv6_google_access2.dart';
import 'node_group_affinity2.dart';
import 'reservation_affinity7.dart';
import 'shielded_instance_config7.dart';

/// Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
class GceClusterConfig2 {
  /// Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final bool? internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final Map<String, String>? metadata;

  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default
  final String? networkUri;

  /// Optional. Node Group Affinity for sole-tenant clusters.
  final NodeGroupAffinity2? nodeGroupAffinity;

  /// Optional. The type of IPv6 access for a cluster.
  final GceClusterConfigPrivateIpv6GoogleAccess2? privateIpv6GoogleAccess;

  /// Optional. Reservation Affinity for consuming Zonal reservation.
  final ReservationAffinity7? reservationAffinity;

  /// Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  final List<String>? serviceAccountScopes;

  /// Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  final ShieldedInstanceConfig7? shieldedInstanceConfig;

  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0
  final String? subnetworkUri;

  /// The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String>? tags;

  /// Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f
  final String? zoneUri;

  GceClusterConfig2({
    this.internalIpOnly,
    this.metadata,
    this.networkUri,
    this.nodeGroupAffinity,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetworkUri,
    this.tags,
    this.zoneUri,
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
    final networkUriValue = networkUri;
    if (networkUriValue != null) {
      map['networkUri'] = networkUriValue;
    }
    final nodeGroupAffinityValue = nodeGroupAffinity;
    if (nodeGroupAffinityValue != null) {
      map['nodeGroupAffinity'] = nodeGroupAffinityValue.toMap();
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue.value;
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
    final subnetworkUriValue = subnetworkUri;
    if (subnetworkUriValue != null) {
      map['subnetworkUri'] = subnetworkUriValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneUriValue = zoneUri;
    if (zoneUriValue != null) {
      map['zoneUri'] = zoneUriValue;
    }
    return map;
  }

  factory GceClusterConfig2.fromMap(Map<String, dynamic> map) {
    return GceClusterConfig2(
      internalIpOnly:
          map['internalIpOnly'] == null ? null : map['internalIpOnly'] as bool,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkUri:
          map['networkUri'] == null ? null : map['networkUri'] as String,
      nodeGroupAffinity: map['nodeGroupAffinity'] == null
          ? null
          : NodeGroupAffinity2.fromMap(
              (map['nodeGroupAffinity'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : GceClusterConfigPrivateIpv6GoogleAccess2.fromValue(
              map['privateIpv6GoogleAccess'] as String),
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : ReservationAffinity7.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig7.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnetworkUri:
          map['subnetworkUri'] == null ? null : map['subnetworkUri'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zoneUri: map['zoneUri'] == null ? null : map['zoneUri'] as String,
    );
  }
}
