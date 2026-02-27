import 'package:pulumi/pulumi.dart';
import '../hub_routing_vpc/hub_routing_vpc.dart';
import 'hub_args.dart';

/// The NetworkConnectivity Hub resource
///
///
/// To get more information about Hub, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.global.hubs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Hub Basic
///
///
///
/// ### Network Connectivity Hub With Export Psc
///
///
///
/// ### Network Connectivity Hub Mesh Topology
///
///
///
/// ### Network Connectivity Hub Star Topology
///
///
///
/// ### Network Connectivity Hub Policy Mode
///
///
///
///
/// ## Import
///
/// Hub can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/hubs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Hub can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default projects/{{project}}/locations/global/hubs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default {{name}}
/// ```
class Hub extends CustomResource {
  /// Output only. The time the hub was created.
  late final Output<String> createTime;

  /// An optional description of the hub.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether Private Service Connect transitivity is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  late final Output<bool> exportPsc;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  late final Output<String> name;

  /// Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policyMode defaults to PRESET.
  /// Possible values are: `CUSTOM`, `PRESET`.
  late final Output<String> policyMode;

  /// Optional. The topology implemented in this hub. Currently, this field is only used when policyMode = PRESET. The available preset topologies are MESH and STAR. If presetTopology is unspecified and policyMode = PRESET, the presetTopology defaults to MESH. When policyMode = CUSTOM, the presetTopology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  /// Possible values are: `MESH`, `STAR`, `HYBRID_INSPECTION`.
  late final Output<String> presetTopology;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The VPC network associated with this hub's spokes. All of the VPN tunnels, VLAN attachments, and router appliance instances referenced by this hub's spokes must belong to this VPC network. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  /// Structure is documented below.
  late final Output<List<HubRoutingVpc>> routingVpcs;

  /// Output only. The current lifecycle state of this hub.
  late final Output<String> state;

  /// Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// Output only. The time the hub was last updated.
  late final Output<String> updateTime;

  Hub(
    String name, {
    HubArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/hub:Hub',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.exportPsc = registerOutput<bool>('exportPsc');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.policyMode = registerOutput<String>('policyMode');
    this.presetTopology = registerOutput<String>('presetTopology');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.routingVpcs = registerOutput<List<HubRoutingVpc>>('routingVpcs');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
