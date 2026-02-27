import 'package:pulumi/pulumi.dart';
import '../wire_group_endpoint/wire_group_endpoint.dart';
import '../wire_group_topology/wire_group_topology.dart';
import '../wire_group_wire/wire_group_wire.dart';
import '../wire_group_wire_group_properties/wire_group_wire_group_properties.dart';
import '../wire_group_wire_properties/wire_group_wire_properties.dart';
import 'wire_group_args.dart';

/// The WireGroup resource represents a group of redundant wires between interconnects in two different metros. Each WireGroup belongs to a CrossSiteNetwork. A wire group defines endpoints and the wires which exist between them.
///
///
/// To get more information about WireGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/wireGroups)
/// * How-to Guides
/// * [Create a WireGroup](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/cross-site/modify-network#add-wire-group)
///
/// ## Example Usage
///
/// ### Compute Wire Group Basic
///
///
///
/// ### Compute Wire Group Basic Beta
///
///
///
///
/// ## Import
///
/// WireGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}`
///
/// * `{{project}}/{{cross_site_network}}/{{name}}`
///
/// * `{{cross_site_network}}/{{name}}`
///
/// When using the `pulumi import` command, WireGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{project}}/{{cross_site_network}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{cross_site_network}}/{{name}}
/// ```
class WireGroup extends CustomResource {
  /// Indicates whether the wire group is administratively enabled.
  late final Output<bool?> adminEnabled;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Required cross site network to which wire group belongs.
  late final Output<String> crossSiteNetwork;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  late final Output<List<WireGroupEndpoint>?> endpoints;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Topology details for the wire group configuration.
  /// Structure is documented below.
  late final Output<List<WireGroupTopology>> topologies;

  /// Properties specific to the wire group.
  /// Structure is documented below.
  late final Output<WireGroupWireGroupProperties?> wireGroupProperties;

  /// Default properties for wires within the group.
  /// Structure is documented below.
  late final Output<WireGroupWireProperties?> wireProperties;

  /// The single/redundant wire(s) managed by the wire group.
  /// Structure is documented below.
  late final Output<List<WireGroupWire>> wires;

  WireGroup(
    String name, {
    WireGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/wireGroup:WireGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminEnabled = registerOutput<bool?>('adminEnabled');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.crossSiteNetwork = registerOutput<String>('crossSiteNetwork');
    this.description = registerOutput<String?>('description');
    this.endpoints = registerOutput<List<WireGroupEndpoint>?>('endpoints');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.topologies = registerOutput<List<WireGroupTopology>>('topologies');
    this.wireGroupProperties =
        registerOutput<WireGroupWireGroupProperties?>('wireGroupProperties');
    this.wireProperties =
        registerOutput<WireGroupWireProperties?>('wireProperties');
    this.wires = registerOutput<List<WireGroupWire>>('wires');
  }
}
