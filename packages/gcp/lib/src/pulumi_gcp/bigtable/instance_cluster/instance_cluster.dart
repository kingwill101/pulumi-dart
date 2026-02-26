// ignore_for_file: unused_element, unnecessary_cast

import '../instance_cluster_autoscaling_config/instance_cluster_autoscaling_config.dart';

class InstanceCluster {
  /// [Autoscaling](https://cloud.google.com/bigtable/docs/autoscaling#parameters) config for the cluster, contains the following arguments:
  final InstanceClusterAutoscalingConfig? autoscalingConfig;

  /// The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  final String clusterId;

  /// Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster.
  final String? kmsKeyName;

  /// The node scaling factor for this cluster. One of `"NodeScalingFactor1X"` or `"NodeScalingFactor2X"`. Defaults to `"NodeScalingFactor1X"`. If `"NodeScalingFactor2X"` is specified, then <span pulumi-lang-nodejs="`numNodes`" pulumi-lang-dotnet="`NumNodes`" pulumi-lang-go="`numNodes`" pulumi-lang-python="`num_nodes`" pulumi-lang-yaml="`numNodes`" pulumi-lang-java="`numNodes`">`num_nodes`</span>, <span pulumi-lang-nodejs="`minNodes`" pulumi-lang-dotnet="`MinNodes`" pulumi-lang-go="`minNodes`" pulumi-lang-python="`min_nodes`" pulumi-lang-yaml="`minNodes`" pulumi-lang-java="`minNodes`">`min_nodes`</span>, and <span pulumi-lang-nodejs="`maxNodes`" pulumi-lang-dotnet="`MaxNodes`" pulumi-lang-go="`maxNodes`" pulumi-lang-python="`max_nodes`" pulumi-lang-yaml="`maxNodes`" pulumi-lang-java="`maxNodes`">`max_nodes`</span> would need to be specified in increments of 2. This value cannot be updated after the cluster is created.
  ///
  /// > **Note**: Removing the field entirely from the config will cause the provider to default to the backend value.
  ///
  /// !> **Warning**: Modifying this field will cause the provider to delete/recreate the entire resource.
  ///
  /// !> **Warning:** Modifying the <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span>, <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> or <span pulumi-lang-nodejs="`kmsKeyName`" pulumi-lang-dotnet="`KmsKeyName`" pulumi-lang-go="`kmsKeyName`" pulumi-lang-python="`kms_key_name`" pulumi-lang-yaml="`kmsKeyName`" pulumi-lang-java="`kmsKeyName`">`kms_key_name`</span> of an existing cluster (by
  /// <span pulumi-lang-nodejs="`clusterId`" pulumi-lang-dotnet="`ClusterId`" pulumi-lang-go="`clusterId`" pulumi-lang-python="`cluster_id`" pulumi-lang-yaml="`clusterId`" pulumi-lang-java="`clusterId`">`cluster_id`</span>) will cause the provider to delete/recreate the entire
  /// <span pulumi-lang-nodejs="`gcp.bigtable.Instance`" pulumi-lang-dotnet="`gcp.bigtable.Instance`" pulumi-lang-go="`bigtable.Instance`" pulumi-lang-python="`bigtable.Instance`" pulumi-lang-yaml="`gcp.bigtable.Instance`" pulumi-lang-java="`gcp.bigtable.Instance`">`gcp.bigtable.Instance`</span> resource. If these values are changing, use a new
  /// <span pulumi-lang-nodejs="`clusterId`" pulumi-lang-dotnet="`ClusterId`" pulumi-lang-go="`clusterId`" pulumi-lang-python="`cluster_id`" pulumi-lang-yaml="`clusterId`" pulumi-lang-java="`clusterId`">`cluster_id`</span>.
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
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = autoscalingConfigValue.toMap();
    }
    map['clusterId'] = clusterId;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final nodeScalingFactorValue = nodeScalingFactor;
    if (nodeScalingFactorValue != null) {
      map['nodeScalingFactor'] = nodeScalingFactorValue;
    }
    final numNodesValue = numNodes;
    if (numNodesValue != null) {
      map['numNodes'] = numNodesValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceCluster.fromMap(Map<String, dynamic> map) {
    return InstanceCluster(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : InstanceClusterAutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      nodeScalingFactor: map['nodeScalingFactor'] == null
          ? null
          : map['nodeScalingFactor'] as String,
      numNodes: map['numNodes'] == null ? null : map['numNodes'] as int,
      state: map['state'] == null ? null : map['state'] as String,
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
