import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_edgenetwork_args.dart';

/// A Distributed Cloud Edge network, which provides L3 isolation within a zone.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/network/rest/v1/projects.locations.zones.networks)
/// * How-to Guides
/// * [Create and manage networks](https://cloud.google.com/distributed-cloud/edge/latest/docs/networks#api)
///
/// ## Example Usage
///
/// ### Edgenetwork Network
///
///
///
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
///
/// * `{{project}}/{{location}}/{{zone}}/{{network_id}}`
///
/// * `{{location}}/{{zone}}/{{network_id}}`
///
/// * `{{location}}/{{network_id}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{project}}/{{location}}/{{zone}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{location}}/{{zone}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{location}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{name}}
/// ```
class NetworkEdgenetwork extends pulumi.CustomResource {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  late final pulumi.Output<String> location;

  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  late final pulumi.Output<int?> mtu;

  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  late final pulumi.Output<String> name;

  /// A unique ID that identifies this network.
  late final pulumi.Output<String> networkId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> updateTime;

  /// The name of the target Distributed Cloud Edge zone.
  late final pulumi.Output<String> zone;

  NetworkEdgenetwork(
    String name, {
    NetworkEdgenetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.networkId = registerOutput<String>('networkId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.zone = registerOutput<String>('zone');
  }
}
