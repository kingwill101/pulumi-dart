// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_config_master_config_accelerator/cluster_cluster_config_master_config_accelerator.dart';
import '../cluster_cluster_config_master_config_disk_config/cluster_cluster_config_master_config_disk_config.dart';

class ClusterClusterConfigMasterConfig {
  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  final List<ClusterClusterConfigMasterConfigAccelerator>? accelerators;

  /// Disk Config
  final ClusterClusterConfigMasterConfigDiskConfig? diskConfig;

  /// The URI for the image to use for this worker.  See [the guide](https://cloud.google.com/dataproc/docs/guides/dataproc-images)
  /// for more information.
  final String? imageUri;

  /// List of master instance names which
  /// have been assigned to the cluster.
  final List<String>? instanceNames;

  /// The name of a Google Compute Engine machine type
  /// to create for the master. If not specified, GCP will default to a predetermined
  /// computed value (currently `n1-standard-4`).
  final String? machineType;

  /// The name of a minimum generation of CPU family
  /// for the master. If not specified, GCP will default to a predetermined computed value
  /// for each zone. See [the guide](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for details about which CPU families are available (and defaulted) for each zone.
  final String? minCpuPlatform;

  /// Specifies the number of master nodes to create.
  /// If not specified, GCP will default to a predetermined computed value (currently 1).
  final int? numInstances;

  ClusterClusterConfigMasterConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceNames,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = pulumi.Input.encodeList<
          ClusterClusterConfigMasterConfigAccelerator,
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
    final numInstancesValue = numInstances;
    if (numInstancesValue != null) {
      map['numInstances'] = numInstancesValue;
    }
    return map;
  }

  factory ClusterClusterConfigMasterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigMasterConfig(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterClusterConfigMasterConfigAccelerator>(
              map['accelerators'],
              (value) => ClusterClusterConfigMasterConfigAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskConfig: map['diskConfig'] == null
          ? null
          : ClusterClusterConfigMasterConfigDiskConfig.fromMap(
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
      numInstances:
          map['numInstances'] == null ? null : map['numInstances'] as int,
    );
  }
}
