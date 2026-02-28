// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_config_response_dataproc_v1beta2.dart';

/// Cluster that is managed by the workflow.
class ManagedClusterResponseDataprocV1beta2 {
  /// The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  final String clusterName;

  /// The cluster configuration.
  final ClusterConfigResponseDataprocV1beta2 config;

  /// Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
  final Map<String, String> labels;

  /// Creates a new [ManagedClusterResponseDataprocV1beta2].
  /// [clusterName] The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  /// [config] The cluster configuration.
  /// [labels] Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
  ManagedClusterResponseDataprocV1beta2({
    required this.clusterName,
    required this.config,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['config'] = config.toMap();
    map['labels'] = labels;
    return map;
  }

  factory ManagedClusterResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedClusterResponseDataprocV1beta2(
      clusterName: map['clusterName'] as String,
      config: ClusterConfigResponseDataprocV1beta2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
