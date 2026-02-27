import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_authorization/cluster_authorization.dart';
import '../cluster_control_plane/cluster_control_plane.dart';
import '../cluster_control_plane_encryption/cluster_control_plane_encryption.dart';
import '../cluster_fleet/cluster_fleet_edgecontainer.dart';
import '../cluster_maintenance_event/cluster_maintenance_event.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy_edgecontainer.dart';
import '../cluster_networking/cluster_networking.dart';
import '../cluster_system_addons_config/cluster_system_addons_config.dart';
import 'cluster_edgecontainer_args.dart';

/// Cluster contains information about a Google Distributed Cloud Edge Kubernetes cluster.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.clusters)
/// * How-to Guides
/// * [Create and manage clusters](https://cloud.google.com/distributed-cloud/edge/latest/docs/clusters)
///
///
///
/// ## Example Usage
///
/// ### Edgecontainer Local Control Plane Cluster
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default {{location}}/{{name}}
/// ```
class ClusterEdgecontainer extends pulumi.CustomResource {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAuthorization> authorization;

  /// The PEM-encoded public certificate of the cluster's CA.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> clusterCaCertificate;

  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  late final pulumi.Output<ClusterControlPlane?> controlPlane;

  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  late final pulumi.Output<ClusterControlPlaneEncryption>
      controlPlaneEncryption;

  /// The control plane release version.
  late final pulumi.Output<String> controlPlaneVersion;

  /// (Output)
  /// The time when the maintenance event request was created.
  late final pulumi.Output<String> createTime;

  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  late final pulumi.Output<int> defaultMaxPodsPerNode;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The IP address of the Kubernetes API server.
  late final pulumi.Output<String> endpoint;

  /// Address pools for cluster data plane external load balancing.
  late final pulumi.Output<List<String>> externalLoadBalancerIpv4AddressPools;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final pulumi.Output<ClusterFleetEdgecontainer> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// All the maintenance events scheduled for the cluster, including the ones
  /// ongoing, planned for the future and done in the past (up to 90 days).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterMaintenanceEvent>> maintenanceEvents;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  late final pulumi.Output<ClusterMaintenancePolicyEdgecontainer>
      maintenancePolicy;

  /// The GDCE cluster name.
  late final pulumi.Output<String> name;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final pulumi.Output<ClusterNetworking> networking;

  /// The lowest release version among all worker nodes. This field can be empty
  /// if the cluster does not have any worker nodes.
  late final pulumi.Output<String> nodeVersion;

  /// The port number of the Kubernetes API server.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  late final pulumi.Output<String> releaseChannel;

  /// Indicates the status of the cluster.
  late final pulumi.Output<String> status;

  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  late final pulumi.Output<ClusterSystemAddonsConfig> systemAddonsConfig;

  /// The target cluster version. For example: "1.5.0".
  late final pulumi.Output<String> targetVersion;

  /// (Output)
  /// The time when the maintenance event message was updated.
  late final pulumi.Output<String> updateTime;

  ClusterEdgecontainer(
    String name, {
    ClusterEdgecontainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorization = registerOutput<ClusterAuthorization>('authorization');
    this.clusterCaCertificate = registerOutput<String>('clusterCaCertificate');
    this.controlPlane = registerOutput<ClusterControlPlane?>('controlPlane');
    this.controlPlaneEncryption =
        registerOutput<ClusterControlPlaneEncryption>('controlPlaneEncryption');
    this.controlPlaneVersion = registerOutput<String>('controlPlaneVersion');
    this.createTime = registerOutput<String>('createTime');
    this.defaultMaxPodsPerNode = registerOutput<int>('defaultMaxPodsPerNode');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoint = registerOutput<String>('endpoint');
    this.externalLoadBalancerIpv4AddressPools =
        registerOutput<List<String>>('externalLoadBalancerIpv4AddressPools');
    this.fleet = registerOutput<ClusterFleetEdgecontainer>('fleet');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceEvents =
        registerOutput<List<ClusterMaintenanceEvent>>('maintenanceEvents');
    this.maintenancePolicy =
        registerOutput<ClusterMaintenancePolicyEdgecontainer>(
            'maintenancePolicy');
    this.name = registerOutput<String>('name');
    this.networking = registerOutput<ClusterNetworking>('networking');
    this.nodeVersion = registerOutput<String>('nodeVersion');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.releaseChannel = registerOutput<String>('releaseChannel');
    this.status = registerOutput<String>('status');
    this.systemAddonsConfig =
        registerOutput<ClusterSystemAddonsConfig>('systemAddonsConfig');
    this.targetVersion = registerOutput<String>('targetVersion');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
