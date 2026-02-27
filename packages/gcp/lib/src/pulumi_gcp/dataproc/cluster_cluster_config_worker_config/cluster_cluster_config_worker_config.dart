// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_config_worker_config_accelerator/cluster_cluster_config_worker_config_accelerator.dart';
import '../cluster_cluster_config_worker_config_disk_config/cluster_cluster_config_worker_config_disk_config.dart';

class ClusterClusterConfigWorkerConfig {
  /// The Compute Engine accelerator configuration for these instances. Can be specified multiple times.
  final List<ClusterClusterConfigWorkerConfigAccelerator>? accelerators;

  /// Disk Config
  final ClusterClusterConfigWorkerConfigDiskConfig? diskConfig;

  /// The URI for the image to use for this worker.  See [the guide](https://cloud.google.com/dataproc/docs/guides/dataproc-images)
  /// for more information.
  final String? imageUri;

  /// List of worker instance names which have been assigned
  /// to the cluster.
  final List<String>? instanceNames;

  /// The name of a Google Compute Engine machine type
  /// to create for the worker nodes. If not specified, GCP will default to a predetermined
  /// computed value (currently `n1-standard-4`).
  final String? machineType;

  /// The name of a minimum generation of CPU family
  /// for the master. If not specified, GCP will default to a predetermined computed value
  /// for each zone. See [the guide](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for details about which CPU families are available (and defaulted) for each zone.
  final String? minCpuPlatform;

  /// The minimum number of primary worker instances to create.  If `min_num_instances` is set, cluster creation will succeed if the number of primary workers created is at least equal to the `min_num_instances` number.
  final int? minNumInstances;

  /// Specifies the number of worker nodes to create.
  /// If not specified, GCP will default to a predetermined computed value (currently 2).
  /// There is currently a beta feature which allows you to run a
  /// [Single Node Cluster](https://cloud.google.com/dataproc/docs/concepts/single-node-clusters).
  /// In order to take advantage of this you need to set
  /// `"dataproc:dataproc.allow.zero.workers" = "true"` in
  /// `cluster_config.software_config.properties`
  final int? numInstances;

  ClusterClusterConfigWorkerConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceNames,
    this.machineType,
    this.minCpuPlatform,
    this.minNumInstances,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.encodeList<
          ClusterClusterConfigWorkerConfigAccelerator,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final diskConfigValue = diskConfig;
    if (diskConfigValue != null) {
      map['diskConfig'] = diskConfigValue.toMap();
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final instanceNamesValue = instanceNames;
    if (instanceNamesValue != null) {
      map['instanceNames'] = instanceNamesValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final minNumInstancesValue = minNumInstances;
    if (minNumInstancesValue != null) {
      map['minNumInstances'] = minNumInstancesValue;
    }
    final numInstancesValue = numInstances;
    if (numInstancesValue != null) {
      map['numInstances'] = numInstancesValue;
    }
    return map;
  }

  factory ClusterClusterConfigWorkerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfig(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<ClusterClusterConfigWorkerConfigAccelerator>(
              map['accelerators'],
              (value) => ClusterClusterConfigWorkerConfigAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskConfig: map['diskConfig'] == null
          ? null
          : ClusterClusterConfigWorkerConfigDiskConfig.fromMap(
              (map['diskConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      instanceNames: map['instanceNames'] == null
          ? null
          : (map['instanceNames'] as List).cast<String>(),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      minNumInstances:
          map['minNumInstances'] == null ? null : map['minNumInstances'] as int,
      numInstances:
          map['numInstances'] == null ? null : map['numInstances'] as int,
    );
  }
}
