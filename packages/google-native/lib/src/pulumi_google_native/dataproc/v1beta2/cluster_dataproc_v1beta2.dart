import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response_dataproc_v1beta2.dart';
import 'cluster_dataproc_v1beta2_args.dart';
import 'cluster_metrics_response_dataproc_v1beta2.dart';
import 'cluster_status_response_dataproc_v1beta2.dart';

/// Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
/// Auto-naming is currently not supported for this resource.
class ClusterDataprocV1beta2 extends pulumi.CustomResource {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  late final pulumi.Output<String> clusterName;

  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  late final pulumi.Output<String> clusterUuid;

  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  late final pulumi.Output<ClusterConfigResponseDataprocV1beta2> config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final pulumi.Output<Map<String, String>> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  late final pulumi.Output<ClusterMetricsResponseDataprocV1beta2> metrics;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1beta2.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Cluster status.
  late final pulumi.Output<ClusterStatusResponseDataprocV1beta2> status;

  /// The previous cluster status.
  late final pulumi.Output<List<ClusterStatusResponseDataprocV1beta2>>
      statusHistory;

  ClusterDataprocV1beta2(
    String name, {
    ClusterDataprocV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.config =
        registerOutput<ClusterConfigResponseDataprocV1beta2>('config');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.metrics =
        registerOutput<ClusterMetricsResponseDataprocV1beta2>('metrics');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.status =
        registerOutput<ClusterStatusResponseDataprocV1beta2>('status');
    this.statusHistory =
        registerOutput<List<ClusterStatusResponseDataprocV1beta2>>(
            'statusHistory');
  }
}
