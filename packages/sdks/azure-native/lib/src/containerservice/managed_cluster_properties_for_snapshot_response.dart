// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_skuresponse.dart';
import 'network_profile_for_snapshot_response.dart';

/// managed cluster properties for snapshot, these properties are read only.
class ManagedClusterPropertiesForSnapshotResponse {
  /// Whether the cluster has enabled Kubernetes Role-Based Access Control or not.
  final pulumi.Input<bool>? enableRbac;
  /// The current kubernetes version.
  final pulumi.Input<String>? kubernetesVersion;
  /// The current network profile.
  final pulumi.Input<NetworkProfileForSnapshotResponse> networkProfile;
  /// The current managed cluster sku.
  final pulumi.Input<ManagedClusterSKUResponse>? sku;

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
      'networkProfile': pulumi.Input.mapInputValue<NetworkProfileForSnapshotResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSKUResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory ManagedClusterPropertiesForSnapshotResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPropertiesForSnapshotResponse(
      enableRbac: map['enableRbac'] == null ? null : (map['enableRbac']! as bool).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion']! as String).input(),
      networkProfile: (NetworkProfileForSnapshotResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (ManagedClusterSKUResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

