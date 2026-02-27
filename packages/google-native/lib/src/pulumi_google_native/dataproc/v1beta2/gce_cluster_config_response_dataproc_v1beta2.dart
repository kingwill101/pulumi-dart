// ignore_for_file: unused_element, unnecessary_cast

import 'node_group_affinity_response_dataproc_v1beta2.dart';
import 'reservation_affinity_response_dataproc_v1beta2.dart';
import 'shielded_instance_config_response_dataproc_v1beta2.dart';

/// Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
class GceClusterConfigResponseDataprocV1beta2 {
  /// Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final bool internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final Map<String, String> metadata;

  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default
  final String networkUri;

  /// Optional. Node Group Affinity for sole-tenant clusters.
  final NodeGroupAffinityResponseDataprocV1beta2 nodeGroupAffinity;

  /// Optional. The type of IPv6 access for a cluster.
  final String privateIpv6GoogleAccess;

  /// Optional. Reservation Affinity for consuming Zonal reservation.
  final ReservationAffinityResponseDataprocV1beta2 reservationAffinity;

  /// Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  final List<String> serviceAccountScopes;

  /// Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  final ShieldedInstanceConfigResponseDataprocV1beta2 shieldedInstanceConfig;

  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0
  final String subnetworkUri;

  /// The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String> tags;

  /// Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f
  final String zoneUri;

  GceClusterConfigResponseDataprocV1beta2({
    required this.internalIpOnly,
    required this.metadata,
    required this.networkUri,
    required this.nodeGroupAffinity,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.serviceAccount,
    required this.serviceAccountScopes,
    required this.shieldedInstanceConfig,
    required this.subnetworkUri,
    required this.tags,
    required this.zoneUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalIpOnly'] = internalIpOnly;
    map['metadata'] = metadata;
    map['networkUri'] = networkUri;
    map['nodeGroupAffinity'] = nodeGroupAffinity.toMap();
    map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccess;
    map['reservationAffinity'] = reservationAffinity.toMap();
    map['serviceAccount'] = serviceAccount;
    map['serviceAccountScopes'] = serviceAccountScopes;
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['subnetworkUri'] = subnetworkUri;
    map['tags'] = tags;
    map['zoneUri'] = zoneUri;
    return map;
  }

  factory GceClusterConfigResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return GceClusterConfigResponseDataprocV1beta2(
      internalIpOnly: map['internalIpOnly'] as bool,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      networkUri: map['networkUri'] as String,
      nodeGroupAffinity: NodeGroupAffinityResponseDataprocV1beta2.fromMap(
          (map['nodeGroupAffinity'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      reservationAffinity: ReservationAffinityResponseDataprocV1beta2.fromMap(
          (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      serviceAccountScopes:
          (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig:
          ShieldedInstanceConfigResponseDataprocV1beta2.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnetworkUri: map['subnetworkUri'] as String,
      tags: (map['tags'] as List).cast<String>(),
      zoneUri: map['zoneUri'] as String,
    );
  }
}
