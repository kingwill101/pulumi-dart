import 'package:pulumi/pulumi.dart';
import '../workstation_cluster_condition/workstation_cluster_condition.dart';
import '../workstation_cluster_domain_config/workstation_cluster_domain_config.dart';
import '../workstation_cluster_private_cluster_config/workstation_cluster_private_cluster_config.dart';
import 'workstation_cluster_args.dart';

/// A grouping of workstation configurations and the associated workstations in that region.
///
/// To get more information about WorkstationCluster, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters/create)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Cluster Basic
///
///
///
/// ### Workstation Cluster Private
///
///
///
/// ### Workstation Cluster Custom Domain
///
///
///
/// ### Workstation Cluster Tags
///
///
///
///
/// ## Import
///
/// WorkstationCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}`
///
/// * `{{location}}/{{workstation_cluster_id}}`
///
/// When using the `pulumi import` command, WorkstationCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{project}}/{{location}}/{{workstation_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{location}}/{{workstation_cluster_id}}
/// ```
class WorkstationCluster extends CustomResource {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final Output<List<WorkstationClusterCondition>> conditions;

  /// The private IP address of the control plane for this workstation cluster.
  /// Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  late final Output<String> controlPlaneIp;

  /// Time when this resource was created.
  late final Output<String> createTime;

  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// Details can be found in the conditions field.
  late final Output<bool> degraded;

  /// Human-readable name for this resource.
  late final Output<String?> displayName;

  /// Configuration options for a custom domain.
  /// Structure is documented below.
  late final Output<WorkstationClusterDomainConfig?> domainConfig;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the workstation cluster should reside.
  late final Output<String?> location;

  /// The name of the cluster resource.
  late final Output<String> name;

  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  late final Output<String> network;

  /// Configuration for private cluster.
  /// Structure is documented below.
  late final Output<WorkstationClusterPrivateClusterConfig?>
      privateClusterConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  late final Output<String> subnetwork;

  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  late final Output<Map<String, String>?> tags;

  /// The system-generated UID of the resource.
  late final Output<String> uid;

  /// ID to use for the workstation cluster.
  late final Output<String> workstationClusterId;

  WorkstationCluster(
    String name, {
    WorkstationClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationCluster:WorkstationCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions =
        registerOutput<List<WorkstationClusterCondition>>('conditions');
    this.controlPlaneIp = registerOutput<String>('controlPlaneIp');
    this.createTime = registerOutput<String>('createTime');
    this.degraded = registerOutput<bool>('degraded');
    this.displayName = registerOutput<String?>('displayName');
    this.domainConfig =
        registerOutput<WorkstationClusterDomainConfig?>('domainConfig');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.privateClusterConfig =
        registerOutput<WorkstationClusterPrivateClusterConfig?>(
            'privateClusterConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uid = registerOutput<String>('uid');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
  }
}
