import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_bigtableadmin_v2_args.dart';
import 'cluster_config_response.dart';
import 'encryption_config_response_bigtableadmin_v2.dart';

/// Creates a cluster within an instance. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.
class ClusterBigtableadminV2 extends pulumi.CustomResource {
  /// Configuration for this cluster.
  late final pulumi.Output<ClusterConfigResponse> clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  late final pulumi.Output<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  late final pulumi.Output<String> defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  late final pulumi.Output<EncryptionConfigResponseBigtableadminV2>
      encryptionConfig;
  late final pulumi.Output<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  late final pulumi.Output<String> location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  late final pulumi.Output<int> serveNodes;

  /// The current state of the cluster.
  late final pulumi.Output<String> state;

  ClusterBigtableadminV2(
    String name, {
    ClusterBigtableadminV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterConfig = registerOutput<ClusterConfigResponse>('clusterConfig');
    this.clusterId = registerOutput<String>('clusterId');
    this.defaultStorageType = registerOutput<String>('defaultStorageType');
    this.encryptionConfig =
        registerOutput<EncryptionConfigResponseBigtableadminV2>(
            'encryptionConfig');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serveNodes = registerOutput<int>('serveNodes');
    this.state = registerOutput<String>('state');
  }
}
