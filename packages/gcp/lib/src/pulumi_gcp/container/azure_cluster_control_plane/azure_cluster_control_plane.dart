// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../azure_cluster_control_plane_database_encryption/azure_cluster_control_plane_database_encryption.dart';
import '../azure_cluster_control_plane_main_volume/azure_cluster_control_plane_main_volume.dart';
import '../azure_cluster_control_plane_proxy_config/azure_cluster_control_plane_proxy_config.dart';
import '../azure_cluster_control_plane_replica_placement/azure_cluster_control_plane_replica_placement.dart';
import '../azure_cluster_control_plane_root_volume/azure_cluster_control_plane_root_volume.dart';
import '../azure_cluster_control_plane_ssh_config/azure_cluster_control_plane_ssh_config.dart';

class AzureClusterControlPlane {
  /// Optional. Configuration related to application-layer secrets encryption.
  final AzureClusterControlPlaneDatabaseEncryption? databaseEncryption;

  /// Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. When unspecified, it defaults to a 8-GiB Azure Disk.
  final AzureClusterControlPlaneMainVolume? mainVolume;

  /// Proxy configuration for outbound HTTP(S) traffic.
  final AzureClusterControlPlaneProxyConfig? proxyConfig;

  /// Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If<span pulumi-lang-nodejs=" replicaPlacements " pulumi-lang-dotnet=" ReplicaPlacements " pulumi-lang-go=" replicaPlacements " pulumi-lang-python=" replica_placements " pulumi-lang-yaml=" replicaPlacements " pulumi-lang-java=" replicaPlacements "> replica_placements </span>is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible.
  final List<AzureClusterControlPlaneReplicaPlacement>? replicaPlacements;

  /// Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk.
  final AzureClusterControlPlaneRootVolume? rootVolume;

  /// SSH configuration for how to access the underlying control plane machines.
  final AzureClusterControlPlaneSshConfig sshConfig;

  /// The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.
  final String subnetId;

  /// Optional. A set of tags to apply to all underlying control plane Azure resources.
  final Map<String, String>? tags;

  /// The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig.
  final String version;

  /// Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`.
  final String? vmSize;

  AzureClusterControlPlane({
    this.databaseEncryption,
    this.mainVolume,
    this.proxyConfig,
    this.replicaPlacements,
    this.rootVolume,
    required this.sshConfig,
    required this.subnetId,
    this.tags,
    required this.version,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseEncryptionValue = databaseEncryption;
    if (databaseEncryptionValue != null) {
      map['databaseEncryption'] = databaseEncryptionValue.toMap();
    }
    final mainVolumeValue = mainVolume;
    if (mainVolumeValue != null) {
      map['mainVolume'] = mainVolumeValue.toMap();
    }
    final proxyConfigValue = proxyConfig;
    if (proxyConfigValue != null) {
      map['proxyConfig'] = proxyConfigValue.toMap();
    }
    final replicaPlacementsValue = replicaPlacements;
    if (replicaPlacementsValue != null) {
      map['replicaPlacements'] = Input.encodeList<
              AzureClusterControlPlaneReplicaPlacement, Map<String, dynamic>>(
          replicaPlacementsValue, (value) => value.toMap());
    }
    final rootVolumeValue = rootVolume;
    if (rootVolumeValue != null) {
      map['rootVolume'] = rootVolumeValue.toMap();
    }
    map['sshConfig'] = sshConfig.toMap();
    map['subnetId'] = subnetId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['version'] = version;
    final vmSizeValue = vmSize;
    if (vmSizeValue != null) {
      map['vmSize'] = vmSizeValue;
    }
    return map;
  }

  factory AzureClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlane(
      databaseEncryption: map['databaseEncryption'] == null
          ? null
          : AzureClusterControlPlaneDatabaseEncryption.fromMap(
              (map['databaseEncryption'] as Map).cast<String, dynamic>()),
      mainVolume: map['mainVolume'] == null
          ? null
          : AzureClusterControlPlaneMainVolume.fromMap(
              (map['mainVolume'] as Map).cast<String, dynamic>()),
      proxyConfig: map['proxyConfig'] == null
          ? null
          : AzureClusterControlPlaneProxyConfig.fromMap(
              (map['proxyConfig'] as Map).cast<String, dynamic>()),
      replicaPlacements: map['replicaPlacements'] == null
          ? null
          : Input.decodeList<AzureClusterControlPlaneReplicaPlacement>(
              map['replicaPlacements'],
              (value) => AzureClusterControlPlaneReplicaPlacement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rootVolume: map['rootVolume'] == null
          ? null
          : AzureClusterControlPlaneRootVolume.fromMap(
              (map['rootVolume'] as Map).cast<String, dynamic>()),
      sshConfig: AzureClusterControlPlaneSshConfig.fromMap(
          (map['sshConfig'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}
