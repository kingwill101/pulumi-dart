import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';

/// A Distributed Cloud Edge subnet, which provides L2 isolation within a network.
///
///
/// To get more information about Subnet, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/network/rest/v1/projects.locations.zones.subnets)
/// * How-to Guides
/// * [Create and manage subnetworks](https://cloud.google.com/distributed-cloud/edge/latest/docs/subnetworks#api)
///
/// ## Example Usage
///
/// ### Edgenetwork Subnet
///
///
///
/// ### Edgenetwork Subnet With Vlan Id
///
///
///
///
/// ## Import
///
/// Subnet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}`
///
/// * `{{project}}/{{location}}/{{zone}}/{{subnet_id}}`
///
/// * `{{location}}/{{zone}}/{{subnet_id}}`
///
/// * `{{location}}/{{subnet_id}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subnet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{project}}/{{location}}/{{zone}}/{{subnet_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{location}}/{{zone}}/{{subnet_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{location}}/{{subnet_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{name}}
/// ```
class Subnet extends pulumi.CustomResource {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  late final pulumi.Output<List<String>?> ipv4Cidrs;

  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  late final pulumi.Output<List<String>?> ipv6Cidrs;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  late final pulumi.Output<String> location;

  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}`
  late final pulumi.Output<String> name;

  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Current stage of the resource to the device by config push.
  late final pulumi.Output<String> state;

  /// A unique ID that identifies this subnet.
  late final pulumi.Output<String> subnetId;

  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> updateTime;

  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  late final pulumi.Output<int> vlanId;

  /// The name of the target Distributed Cloud Edge zone.
  late final pulumi.Output<String> zone;

  Subnet(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipv4Cidrs = registerOutput<List<String>?>('ipv4Cidrs');
    this.ipv6Cidrs = registerOutput<List<String>?>('ipv6Cidrs');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.subnetId = registerOutput<String>('subnetId');
    this.updateTime = registerOutput<String>('updateTime');
    this.vlanId = registerOutput<int>('vlanId');
    this.zone = registerOutput<String>('zone');
  }
}
