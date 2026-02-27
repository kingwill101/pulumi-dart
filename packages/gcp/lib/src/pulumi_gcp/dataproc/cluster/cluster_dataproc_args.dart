// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_config/cluster_cluster_config.dart';
import '../cluster_virtual_cluster_config/cluster_virtual_cluster_config.dart';

/// The set of arguments for Cluster.
class ClusterDataprocArgs {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfig>? clusterConfig;
  final pulumi.Input<String>? gracefulDecommissionTimeout;

  /// The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the cluster, unique within the project and
  /// zone.
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The ID of the project in which the `cluster` will exist. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the cluster and associated nodes will be created in.
  /// Defaults to `global`.
  final pulumi.Input<String>? region;

  /// Allows you to configure a virtual Dataproc on GKE cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterVirtualClusterConfig>? virtualClusterConfig;

  ClusterDataprocArgs({
    this.clusterConfig,
    this.gracefulDecommissionTimeout,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterConfigValue = clusterConfig;
    if (clusterConfigValue != null) {
      map['clusterConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterClusterConfig,
          Map<String, dynamic>>(clusterConfigValue, (value) => value.toMap());
    }
    final gracefulDecommissionTimeoutValue = gracefulDecommissionTimeout;
    if (gracefulDecommissionTimeoutValue != null) {
      map['gracefulDecommissionTimeout'] = gracefulDecommissionTimeoutValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final virtualClusterConfigValue = virtualClusterConfig;
    if (virtualClusterConfigValue != null) {
      map['virtualClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterVirtualClusterConfig, Map<String, dynamic>>(
          virtualClusterConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterDataprocArgs.fromMap(Map<String, dynamic> map) {
    return ClusterDataprocArgs(
      clusterConfig: pulumi.Input.asOptionalInput<ClusterClusterConfig>(
          map['clusterConfig']),
      gracefulDecommissionTimeout: pulumi.Input.asOptionalInput<String>(
          map['gracefulDecommissionTimeout']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      virtualClusterConfig:
          pulumi.Input.asOptionalInput<ClusterVirtualClusterConfig>(
              map['virtualClusterConfig']),
    );
  }
}
