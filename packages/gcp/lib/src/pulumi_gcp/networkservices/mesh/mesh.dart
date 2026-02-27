import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_args.dart';

/// Mesh represents a logical configuration grouping for workload to workload communication within a
/// service mesh. Routes that point to mesh dictate how requests are routed within this logical
/// mesh boundary.
///
///
/// To get more information about Mesh, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.meshes)
///
/// ## Example Usage
///
/// ### Network Services Mesh Basic
///
///
///
/// ### Network Services Mesh No Port
///
///
///
/// ### Network Services Mesh Location
///
///
///
///
/// ## Import
///
/// Mesh can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/meshes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Mesh can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/mesh:Mesh default projects/{{project}}/locations/{{location}}/meshes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/mesh:Mesh default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/mesh:Mesh default {{location}}/{{name}}
/// ```
class Mesh extends pulumi.CustomResource {
  /// Time the Mesh was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to
  /// be redirected to this port regardless of its actual ip:port destination. If unset, a port
  /// '15001' is used as the interception port. This will is applicable only for sidecar proxy
  /// deployments.
  late final pulumi.Output<int?> interceptionPort;

  /// Set of label tags associated with the Mesh resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  late final pulumi.Output<String?> location;

  /// Short name of the Mesh resource to be created.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// Time the Mesh was updated in UTC.
  late final pulumi.Output<String> updateTime;

  Mesh(
    String name, {
    MeshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/mesh:Mesh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interceptionPort = registerOutput<int?>('interceptionPort');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
