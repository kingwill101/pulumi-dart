// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_config2.dart';
import 'virtual_cluster_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs7 {
  /// Optional. Failure action when primary worker creation fails.
  final Input<String>? actionOnFailedPrimaryWorkers;

  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  final Input<String> clusterName;

  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  final Input<ClusterConfig2>? config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Input<Map<String, String>>? labels;

  /// The Google Cloud Platform project ID that the cluster belongs to.
  final Input<String>? project;
  final Input<String> region;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  final Input<VirtualClusterConfig>? virtualClusterConfig;

  ClusterArgs7({
    this.actionOnFailedPrimaryWorkers,
    required this.clusterName,
    this.config,
    this.labels,
    this.project,
    required this.region,
    this.requestId,
    this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionOnFailedPrimaryWorkersValue = actionOnFailedPrimaryWorkers;
    if (actionOnFailedPrimaryWorkersValue != null) {
      map['actionOnFailedPrimaryWorkers'] = actionOnFailedPrimaryWorkersValue;
    }
    map['clusterName'] = clusterName;
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<ClusterConfig2, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final virtualClusterConfigValue = virtualClusterConfig;
    if (virtualClusterConfigValue != null) {
      map['virtualClusterConfig'] = Input.mapOptionalInputValue<
              VirtualClusterConfig, Map<String, dynamic>>(
          virtualClusterConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs7.fromMap(Map<String, dynamic> map) {
    return ClusterArgs7(
      actionOnFailedPrimaryWorkers:
          Input.asOptionalInput<String>(map['actionOnFailedPrimaryWorkers']),
      clusterName: Input.asInput<String>(map['clusterName']),
      config: Input.asOptionalInput<ClusterConfig2>(map['config']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      virtualClusterConfig: Input.asOptionalInput<VirtualClusterConfig>(
          map['virtualClusterConfig']),
    );
  }
}
