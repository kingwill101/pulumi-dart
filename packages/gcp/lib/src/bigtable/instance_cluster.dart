// ignore_for_file: unused_element, unnecessary_cast

import 'instance_cluster_autoscaling_config.dart';

class InstanceCluster {
  /// [Autoscaling](https://cloud.google.com/bigtable/docs/autoscaling#parameters) config for the cluster, contains the following arguments:
  final InstanceClusterAutoscalingConfig? autoscalingConfig;

  /// The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  final String clusterId;

  /// Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster.
  final String? kmsKeyName;

  /// The node scaling factor for this cluster. One of `"NodeScalingFactor1X"` or `"NodeScalingFactor2X"`. Defaults to `"NodeScalingFactor1X"`. If `"NodeScalingFactor2X"` is specified, then `num_nodes`, `min_nodes`, and `max_nodes` would need to be specified in increments of 2. This value cannot be updated after the cluster is created.
  ///
  /// > **Note**: Removing the field entirely from the config will cause the provider to default to the backend value.
  ///
  /// !> **Warning**: Modifying this field will cause the provider to delete/recreate the entire resource.
  ///
  /// !> **Warning:** Modifying the `storage_type`, `zone` or `kms_key_name` of an existing cluster (by
  /// `cluster_id`) will cause the provider to delete/recreate the entire
  /// `gcp.bigtable.Instance` resource. If these values are changing, use a new
  /// `cluster_id`.
  final String? nodeScalingFactor;

  /// The number of nodes in the cluster.
  /// If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final int? numNodes;

  /// describes the current state of the cluster.
  final String? state;

  /// The storage type to use. One of `"SSD"` or
  /// `"HDD"`. Defaults to `"SSD"`.
  final String? storageType;

  /// The zone to create the Cloud Bigtable cluster in. If it not
  /// specified, the provider zone is used. Each cluster must have a different zone in the same region. Zones that support
  /// Bigtable instances are noted on the [Cloud Bigtable locations page](https://cloud.google.com/bigtable/docs/locations).
  final String? zone;

  /// Creates a new [InstanceCluster].
  /// [autoscalingConfig] [Autoscaling](https://cloud.google.com/bigtable/docs/autoscaling#parameters) config for the cluster, contains the following arguments:
  /// [clusterId] The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster.
  /// [nodeScalingFactor] The node scaling factor for this cluster. One of `"NodeScalingFactor1X"` or `"NodeScalingFactor2X"`. Defaults to `"NodeScalingFactor1X"`. If `"NodeScalingFactor2X"` is specified, then `num_nodes`, `min_nodes`, and `max_nodes` would need to be specified in increments of 2. This value cannot be updated after the cluster is created.
  /// [numNodes] The number of nodes in the cluster.
  /// [state] describes the current state of the cluster.
  /// [storageType] The storage type to use. One of `"SSD"` or
  /// [zone] The zone to create the Cloud Bigtable cluster in. If it not
  InstanceCluster({
    this.autoscalingConfig,
    required this.clusterId,
    this.kmsKeyName,
    this.nodeScalingFactor,
    this.numNodes,
    this.state,
    this.storageType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?autoscalingConfig == null
          ? null
          : autoscalingConfig!.toMap(),
      'clusterId': clusterId,
      'kmsKeyName': ?kmsKeyName,
      'nodeScalingFactor': ?nodeScalingFactor,
      'numNodes': ?numNodes,
      'state': ?state,
      'storageType': ?storageType,
      'zone': ?zone,
    };
  }

  factory InstanceCluster.fromMap(Map<String, dynamic> map) {
    return InstanceCluster(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : InstanceClusterAutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>(),
            ),
      clusterId: map['clusterId'] as String,
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      nodeScalingFactor: map['nodeScalingFactor'] == null
          ? null
          : map['nodeScalingFactor'] as String,
      numNodes: map['numNodes'] == null ? null : map['numNodes'] as int,
      state: map['state'] == null ? null : map['state'] as String,
      storageType: map['storageType'] == null
          ? null
          : map['storageType'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
