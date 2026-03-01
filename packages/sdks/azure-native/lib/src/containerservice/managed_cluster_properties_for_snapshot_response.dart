// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_skuresponse.dart';
import 'network_profile_for_snapshot_response.dart';

/// managed cluster properties for snapshot, these properties are read only.
class ManagedClusterPropertiesForSnapshotResponse {
  /// Whether the cluster has enabled Kubernetes Role-Based Access Control or not.
  final bool? enableRbac;
  /// The current kubernetes version.
  final String? kubernetesVersion;
  /// The current network profile.
  final NetworkProfileForSnapshotResponse networkProfile;
  /// The current managed cluster sku.
  final ManagedClusterSKUResponse? sku;

  /// Creates a new [ManagedClusterPropertiesForSnapshotResponse].
  /// [enableRbac] Whether the cluster has enabled Kubernetes Role-Based Access Control or not.
  /// [kubernetesVersion] The current kubernetes version.
  /// [networkProfile] The current network profile.
  /// [sku] The current managed cluster sku.
  ManagedClusterPropertiesForSnapshotResponse({
    this.enableRbac,
    this.kubernetesVersion,
    required this.networkProfile,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRbac': ?enableRbac,
      'kubernetesVersion': ?kubernetesVersion,
      'networkProfile': networkProfile.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory ManagedClusterPropertiesForSnapshotResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPropertiesForSnapshotResponse(
      enableRbac: map['enableRbac'] == null ? null : map['enableRbac'] as bool,
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
      networkProfile: NetworkProfileForSnapshotResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : ManagedClusterSKUResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

