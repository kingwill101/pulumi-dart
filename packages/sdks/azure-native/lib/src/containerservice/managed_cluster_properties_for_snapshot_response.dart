// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_skuresponse.dart';
import 'network_profile_for_snapshot_response.dart';

/// managed cluster properties for snapshot, these properties are read only.
class ManagedClusterPropertiesForSnapshotResponse {
  /// Whether the cluster has enabled Kubernetes Role-Based Access Control or not.
  final pulumi.Input<bool?>? enableRbac;
  /// The current kubernetes version.
  final pulumi.Input<String?>? kubernetesVersion;
  /// The current network profile.
  final pulumi.Input<NetworkProfileForSnapshotResponse> networkProfile;
  /// The current managed cluster sku.
  final pulumi.Input<ManagedClusterSKUResponse?>? sku;

  /// Creates a new [ManagedClusterPropertiesForSnapshotResponse].
  /// [enableRbac] Whether the cluster has enabled Kubernetes Role-Based Access Control or not.
  /// [kubernetesVersion] The current kubernetes version.
  /// [networkProfile] The current network profile.
  /// [sku] The current managed cluster sku.
  const ManagedClusterPropertiesForSnapshotResponse({
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
      enableRbac: (() { final guardedValue = map['enableRbac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: pulumi.Input.fromValue(NetworkProfileForSnapshotResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
