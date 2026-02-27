// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_config_response2.dart';
import 'cluster_metrics_response.dart';
import 'cluster_status_response.dart';
import 'virtual_cluster_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult7 {
  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  final String clusterName;

  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String clusterUuid;

  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  final ClusterConfigResponse2 config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponse metrics;

  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String project;

  /// Cluster status.
  final ClusterStatusResponse status;

  /// The previous cluster status.
  final List<ClusterStatusResponse> statusHistory;

  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  final VirtualClusterConfigResponse virtualClusterConfig;

  GetClusterResult7({
    required this.clusterName,
    required this.clusterUuid,
    required this.config,
    required this.labels,
    required this.metrics,
    required this.project,
    required this.status,
    required this.statusHistory,
    required this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['clusterUuid'] = clusterUuid;
    map['config'] = config.toMap();
    map['labels'] = labels;
    map['metrics'] = metrics.toMap();
    map['project'] = project;
    map['status'] = status.toMap();
    map['statusHistory'] =
        Input.encodeList<ClusterStatusResponse, Map<String, dynamic>>(
            statusHistory, (value) => value.toMap());
    map['virtualClusterConfig'] = virtualClusterConfig.toMap();
    return map;
  }

  factory GetClusterResult7.fromMap(Map<String, dynamic> map) {
    return GetClusterResult7(
      clusterName: map['clusterName'] as String,
      clusterUuid: map['clusterUuid'] as String,
      config: ClusterConfigResponse2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: ClusterMetricsResponse.fromMap(
          (map['metrics'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      status: ClusterStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      statusHistory: Input.decodeList<ClusterStatusResponse>(
          map['statusHistory'],
          (value) => ClusterStatusResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      virtualClusterConfig: VirtualClusterConfigResponse.fromMap(
          (map['virtualClusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
