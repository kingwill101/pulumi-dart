// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_cluster_config_gce_cluster_config_confidential_instance_config/cluster_cluster_config_gce_cluster_config_confidential_instance_config.dart';
import '../cluster_cluster_config_gce_cluster_config_node_group_affinity/cluster_cluster_config_gce_cluster_config_node_group_affinity.dart';
import '../cluster_cluster_config_gce_cluster_config_reservation_affinity/cluster_cluster_config_gce_cluster_config_reservation_affinity.dart';
import '../cluster_cluster_config_gce_cluster_config_shielded_instance_config/cluster_cluster_config_gce_cluster_config_shielded_instance_config.dart';

class ClusterClusterConfigGceClusterConfig {
  /// Confidential Instance Config for clusters using [Confidential VMs](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/confidential-compute)
  final ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig?
      confidentialInstanceConfig;

  /// By default, clusters are not restricted to internal IP addresses,
  /// and will have ephemeral external IP addresses assigned to each instance. If set to true, all
  /// instances in the cluster will only have internal IP addresses. Note: Private Google Access
  /// (also known as `privateIpGoogleAccess`) must be enabled on the subnetwork that the cluster
  /// will be launched in.
  final bool? internalIpOnly;

  /// A map of the Compute Engine metadata entries to add to all instances
  /// (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final Map<String, String>? metadata;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the Google Compute Engine
  /// network to the cluster will be part of. Conflicts with <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span>.
  /// If neither is specified, this defaults to the "default" network.
  final String? network;

  /// Node Group Affinity for sole-tenant clusters.
  final ClusterClusterConfigGceClusterConfigNodeGroupAffinity?
      nodeGroupAffinity;

  /// Reservation Affinity for consuming zonal reservation.
  final ClusterClusterConfigGceClusterConfigReservationAffinity?
      reservationAffinity;

  /// A map of resource manager tags to add to all instances.
  /// Keys must be in the format `tagKeys/{tag_key_id}` and values in the format `tagValues/{tag_value_id}`
  /// (see [Secure tags](https://cloud.google.com/dataproc/docs/guides/use-secure-tags)).
  final Map<String, String>? resourceManagerTags;

  /// The service account to be used by the Node VMs.
  /// If not specified, the "default" service account is used.
  final String? serviceAccount;

  /// The set of Google API scopes
  /// to be made available on all of the node VMs under the <span pulumi-lang-nodejs="`serviceAccount`" pulumi-lang-dotnet="`ServiceAccount`" pulumi-lang-go="`serviceAccount`" pulumi-lang-python="`service_account`" pulumi-lang-yaml="`serviceAccount`" pulumi-lang-java="`serviceAccount`">`service_account`</span>
  /// specified. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  final List<String>? serviceAccountScopes;

  /// Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm).
  ///
  /// - - -
  final ClusterClusterConfigGceClusterConfigShieldedInstanceConfig?
      shieldedInstanceConfig;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the Google Compute Engine
  /// subnetwork the cluster will be part of. Conflicts with <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>.
  final String? subnetwork;

  /// The list of instance tags applied to instances in the cluster.
  /// Tags are used to identify valid sources or targets for network firewalls.
  final List<String>? tags;

  /// The GCP zone where your data is stored and used (i.e. where
  /// the master and the worker nodes will be created in). If <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> is set to 'global' (default)
  /// then <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> is mandatory, otherwise GCP is able to make use of [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/auto-zone)
  /// to determine this automatically for you.
  /// Note: This setting additionally determines and restricts
  /// which computing resources are available for use with other configs such as
  /// `cluster_config.master_config.machine_type` and `cluster_config.worker_config.machine_type`.
  final String? zone;

  ClusterClusterConfigGceClusterConfig({
    this.confidentialInstanceConfig,
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.nodeGroupAffinity,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetwork,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
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
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = reservationAffinityValue.toMap();
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
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

  factory ClusterClusterConfigGceClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfig(
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig
              .fromMap((map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      internalIpOnly:
          map['internalIpOnly'] == null ? null : map['internalIpOnly'] as bool,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      nodeGroupAffinity: map['nodeGroupAffinity'] == null
          ? null
          : ClusterClusterConfigGceClusterConfigNodeGroupAffinity.fromMap(
              (map['nodeGroupAffinity'] as Map).cast<String, dynamic>()),
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : ClusterClusterConfigGceClusterConfigReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ClusterClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
