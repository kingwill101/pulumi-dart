// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_dataproc_v1beta2.dart';

/// The set of arguments for Cluster.
class ClusterDataprocV1beta2Args {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  final pulumi.Input<String> clusterName;

  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  final pulumi.Input<ClusterConfigDataprocV1beta2> config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Google Cloud Platform project ID that the cluster belongs to.
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1beta2.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  ClusterDataprocV1beta2Args({
    required this.clusterName,
    required this.config,
    this.labels,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['config'] = pulumi.Input.mapInputValue<ClusterConfigDataprocV1beta2,
        Map<String, dynamic>>(config, (value) => value.toMap());
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
    return map;
  }

  factory ClusterDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ClusterDataprocV1beta2Args(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      config: pulumi.Input.asInput<ClusterConfigDataprocV1beta2>(map['config']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
