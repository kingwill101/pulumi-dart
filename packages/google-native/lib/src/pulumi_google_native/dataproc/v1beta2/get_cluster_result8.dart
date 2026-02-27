// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_config_response3.dart';
import 'cluster_metrics_response2.dart';
import 'cluster_status_response2.dart';

/// Result data returned by getCluster.
class GetClusterResult8 {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  final String clusterName;

  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String clusterUuid;

  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  final ClusterConfigResponse3 config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponse2 metrics;

  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String project;

  /// Cluster status.
  final ClusterStatusResponse2 status;

  /// The previous cluster status.
  final List<ClusterStatusResponse2> statusHistory;

  GetClusterResult8({
    required this.clusterName,
    required this.clusterUuid,
    required this.config,
    required this.labels,
    required this.metrics,
    required this.project,
    required this.status,
    required this.statusHistory,
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
        Input.encodeList<ClusterStatusResponse2, Map<String, dynamic>>(
            statusHistory, (value) => value.toMap());
    return map;
  }

  factory GetClusterResult8.fromMap(Map<String, dynamic> map) {
    return GetClusterResult8(
      clusterName: map['clusterName'] as String,
      clusterUuid: map['clusterUuid'] as String,
      config: ClusterConfigResponse3.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: ClusterMetricsResponse2.fromMap(
          (map['metrics'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      status: ClusterStatusResponse2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      statusHistory: Input.decodeList<ClusterStatusResponse2>(
          map['statusHistory'],
          (value) => ClusterStatusResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
