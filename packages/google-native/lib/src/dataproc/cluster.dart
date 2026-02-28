import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_config_response.dart';
import 'cluster_metrics_response.dart';
import 'cluster_status_response.dart';
import 'virtual_cluster_config_response.dart';

/// Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
/// Auto-naming is currently not supported for this resource.
class Cluster extends pulumi.CustomResource {
  /// Optional. Failure action when primary worker creation fails.
  late final pulumi.Output<String?> actionOnFailedPrimaryWorkers;

  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  late final pulumi.Output<String> clusterName;

  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  late final pulumi.Output<String> clusterUuid;

  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  late final pulumi.Output<ClusterConfigResponse> config;

  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final pulumi.Output<Map<String, String>> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  late final pulumi.Output<ClusterMetricsResponse> metrics;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Cluster status.
  late final pulumi.Output<ClusterStatusResponse> status;

  /// The previous cluster status.
  late final pulumi.Output<List<ClusterStatusResponse>> statusHistory;

  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  late final pulumi.Output<VirtualClusterConfigResponse> virtualClusterConfig;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_dataproc_v1_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionOnFailedPrimaryWorkers =
        registerOutput<String?>('actionOnFailedPrimaryWorkers');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.config = registerOutput<ClusterConfigResponse>('config');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.metrics = registerOutput<ClusterMetricsResponse>('metrics');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.status = registerOutput<ClusterStatusResponse>('status');
    this.statusHistory =
        registerOutput<List<ClusterStatusResponse>>('statusHistory');
    this.virtualClusterConfig =
        registerOutput<VirtualClusterConfigResponse>('virtualClusterConfig');
  }
}
