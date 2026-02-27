import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_args.dart';

/// A single instance of a developer workstation with its own persistent storage.
///
/// To get more information about Workstation, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs.workstations)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Basic
///
///
///
///
/// ## Import
///
/// Workstation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}`
///
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}`
///
/// * `{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}`
///
/// When using the `pulumi import` command, Workstation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
/// ```
class Workstation extends pulumi.CustomResource {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Time when this resource was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable name for this resource.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// 'Client-specified environment variables passed to the workstation container's entrypoint.'
  late final pulumi.Output<Map<String, String>?> env;

  /// Host to which clients can send HTTPS traffic that will be received by the workstation.
  /// Authorized traffic will be received to the workstation as HTTP on port 80.
  /// To send traffic to a different port, clients may prefix the host with the destination port in the format "{port}-{host}".
  late final pulumi.Output<String> host;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the workstation parent resources reside.
  late final pulumi.Output<String> location;

  /// Full name of this resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Full resource name of the source workstation from which the workstation's persistent
  /// directories will be cloned from during creation.
  late final pulumi.Output<String?> sourceWorkstation;

  /// Current state of the workstation.
  late final pulumi.Output<String> state;

  /// A system-assigned unique identified for this resource.
  late final pulumi.Output<String> uid;

  /// The ID of the parent workstation cluster.
  late final pulumi.Output<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  late final pulumi.Output<String> workstationConfigId;

  /// ID to use for the workstation.
  late final pulumi.Output<String> workstationId;

  Workstation(
    String name, {
    WorkstationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstation:Workstation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.env = registerOutput<Map<String, String>?>('env');
    this.host = registerOutput<String>('host');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceWorkstation = registerOutput<String?>('sourceWorkstation');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
    this.workstationId = registerOutput<String>('workstationId');
  }
}
