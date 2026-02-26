import 'package:pulumi/pulumi.dart';
import 'cluster_args4.dart';
import 'cluster_config_response.dart';
import 'encryption_config_response4.dart';

/// Creates a cluster within an instance. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.
class Cluster4 extends CustomResource {
  /// Configuration for this cluster.
  late final Output<ClusterConfigResponse> clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  late final Output<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  late final Output<String> defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  late final Output<EncryptionConfigResponse4> encryptionConfig;
  late final Output<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  late final Output<String> location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  late final Output<String> name;
  late final Output<String> project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  late final Output<int> serveNodes;

  /// The current state of the cluster.
  late final Output<String> state;

  Cluster4(
    String name, {
    ClusterArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterConfig = Output.createUnknown<ClusterConfigResponse>();
    this.clusterId = Output.createUnknown<String>();
    this.defaultStorageType = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<EncryptionConfigResponse4>();
    this.instanceId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serveNodes = Output.createUnknown<int>();
    this.state = Output.createUnknown<String>();
  }
}
