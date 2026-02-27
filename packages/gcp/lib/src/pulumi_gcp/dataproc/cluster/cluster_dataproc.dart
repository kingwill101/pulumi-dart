import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_config/cluster_cluster_config.dart';
import '../cluster_virtual_cluster_config/cluster_virtual_cluster_config.dart';
import 'cluster_dataproc_args.dart';

/// Manages a Cloud Dataproc cluster resource within GCP.
///
/// * [API documentation](https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.clusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataproc/docs)
///
///
/// !> **Warning:** Due to limitations of the API, all arguments except
/// `labels`,`cluster_config.worker_config.num_instances` and `cluster_config.preemptible_worker_config.num_instances` are non-updatable. Changing `cluster_config.worker_config.min_num_instances` will be ignored. Changing others will cause recreation of the
/// whole cluster!
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Advanced
///
///
///
/// ### Using A GPU Accelerator
///
///
///
/// ## Import
///
/// This resource does not support import.
class ClusterDataproc extends pulumi.CustomResource {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  late final pulumi.Output<ClusterClusterConfig> clusterConfig;

  /// The list of labels (key/value pairs) to be applied to
  /// instances in the cluster. GCP generates some itself including `goog-dataproc-cluster-name`
  /// which is the name of the cluster.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  late final pulumi.Output<String?> gracefulDecommissionTimeout;

  /// The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the cluster, unique within the project and
  /// zone.
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The ID of the project in which the `cluster` will exist. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region in which the cluster and associated nodes will be created in.
  /// Defaults to `global`.
  late final pulumi.Output<String?> region;

  /// Allows you to configure a virtual Dataproc on GKE cluster.
  /// Structure defined below.
  late final pulumi.Output<ClusterVirtualClusterConfig> virtualClusterConfig;

  ClusterDataproc(
    String name, {
    ClusterDataprocArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterConfig = registerOutput<ClusterClusterConfig>('clusterConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gracefulDecommissionTimeout =
        registerOutput<String?>('gracefulDecommissionTimeout');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.virtualClusterConfig =
        registerOutput<ClusterVirtualClusterConfig>('virtualClusterConfig');
  }
}
