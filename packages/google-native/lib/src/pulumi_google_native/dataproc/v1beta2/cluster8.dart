import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_args8.dart';
import 'cluster_config_response3.dart';
import 'cluster_metrics_response2.dart';
import 'cluster_status_response2.dart';

/// Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
/// Auto-naming is currently not supported for this resource.
class Cluster8 extends CustomResource {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  late final Output<String> clusterName;

  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  late final Output<String> clusterUuid;

  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  late final Output<ClusterConfigResponse3> config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final Output<Map<String, String>> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  late final Output<ClusterMetricsResponse2> metrics;
  late final Output<String> project;
  late final Output<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1beta2.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Cluster status.
  late final Output<ClusterStatusResponse2> status;

  /// The previous cluster status.
  late final Output<List<ClusterStatusResponse2>> statusHistory;

  Cluster8(
    String name, {
    ClusterArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.config = registerOutput<ClusterConfigResponse3>('config');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.metrics = registerOutput<ClusterMetricsResponse2>('metrics');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.status = registerOutput<ClusterStatusResponse2>('status');
    this.statusHistory =
        registerOutput<List<ClusterStatusResponse2>>('statusHistory');
  }
}
