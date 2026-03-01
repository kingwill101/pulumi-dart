// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config_accelerator.dart';
import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config_disk_config.dart';

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig {
  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified
  /// multiple times.
  final List<
    ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator
  >?
  accelerators;

  /// Disk Config
  final ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig?
  diskConfig;

  /// List of auxiliary node group instance names which have been assigned to the cluster.
  final List<String>? instanceNames;

  /// The name of a Google Compute Engine machine type
  /// to create for the node group. If not specified, GCP will default to a predetermined
  /// computed value (currently `n1-standard-4`).
  final String? machineType;

  /// The name of a minimum generation of CPU family
  /// for the node group. If not specified, GCP will default to a predetermined computed value
  /// for each zone. See [the guide](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for details about which CPU families are available (and defaulted) for each zone.
  final String? minCpuPlatform;

  /// Specifies the number of master nodes to create.
  /// Please set a number greater than 0. Node Group must have at least 1 instance.
  final int? numInstances;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig].
  /// [accelerators] The Compute Engine accelerator (GPU) configuration for these instances. Can be specified
  /// [diskConfig] Disk Config
  /// [instanceNames] List of auxiliary node group instance names which have been assigned to the cluster.
  /// [machineType] The name of a Google Compute Engine machine type
  /// [minCpuPlatform] The name of a minimum generation of CPU family
  /// [numInstances] Specifies the number of master nodes to create.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig({
    this.accelerators,
    this.diskConfig,
    this.instanceNames,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?accelerators == null
          ? null
          : pulumi.Input.encodeList<
              ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator,
              Map<String, dynamic>
            >(accelerators!, (value) => value.toMap()),
      'diskConfig': ?diskConfig == null ? null : diskConfig!.toMap(),
      'instanceNames': ?instanceNames,
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator
            >(
              map['accelerators'],
              (value) =>
                  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      diskConfig: map['diskConfig'] == null
          ? null
          : ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig.fromMap(
              (map['diskConfig'] as Map).cast<String, dynamic>(),
            ),
      instanceNames: map['instanceNames'] == null
          ? null
          : (map['instanceNames'] as List).cast<String>(),
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      numInstances: map['numInstances'] == null
          ? null
          : map['numInstances'] as int,
    );
  }
}
