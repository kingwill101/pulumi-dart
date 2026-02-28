// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_dataproc_v1beta2.dart';

/// {@template pulumi_dataproc_v1beta2_cluster_dataproc_v1beta2_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_cluster_dataproc_v1beta2_args_doc}
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

  /// Creates a new [ClusterDataprocV1beta2Args].
  /// [clusterName] The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  /// [config] The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  /// [labels] Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [project] The Google Cloud Platform project ID that the cluster belongs to.
  /// [region] Required.
  /// [requestId] Optional. A unique id used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1beta2.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  ClusterDataprocV1beta2Args({
    required String clusterName,
    required ClusterConfigDataprocV1beta2 config,
    Map<String, String>? labels,
    String? project,
    required String region,
    String? requestId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      config = pulumi.Input.asInput<ClusterConfigDataprocV1beta2>(config),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'config': pulumi.Input.mapInputValue<ClusterConfigDataprocV1beta2, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory ClusterDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ClusterDataprocV1beta2Args(
      clusterName: map['clusterName'] as String,
      config: ClusterConfigDataprocV1beta2.fromMap((map['config'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}

