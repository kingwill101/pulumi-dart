import 'package:pulumi/pulumi.dart' as pulumi;
import '../destination_endpoint/destination_endpoint.dart';
import '../destination_state_timeline/destination_state_timeline.dart';
import 'destination_args.dart';

/// 'Manage Multicloud Data Transfer Destinations'
///
///
/// To get more information about Destination, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.multicloudDataTransferConfigs.destinations)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/data-transfer-essentials/docs/create-resources)
///
/// ## Example Usage
///
/// ### Network Connectivity Destination Basic
///
///
///
///
/// ## Import
///
/// Destination can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{multicloud_data_transfer_config}}/destinations/{{name}}`
///
/// * `{{project}}/{{location}}/{{multicloud_data_transfer_config}}/{{name}}`
///
/// * `{{location}}/{{multicloud_data_transfer_config}}/{{name}}`
///
/// When using the `pulumi import` command, Destination can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{multicloud_data_transfer_config}}/destinations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default {{project}}/{{location}}/{{multicloud_data_transfer_config}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default {{location}}/{{multicloud_data_transfer_config}}/{{name}}
/// ```
class Destination extends pulumi.CustomResource {
  /// Time when the `Destination` resource was created.
  late final pulumi.Output<String> createTime;

  /// A description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  late final pulumi.Output<List<DestinationEndpoint>> endpoints;

  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  late final pulumi.Output<String> etag;

  /// The IP prefix that represents your workload on another CSP.
  late final pulumi.Output<String> ipPrefix;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the destination.
  late final pulumi.Output<String> location;

  /// The multicloud data transfer config of the destination.
  late final pulumi.Output<String> multicloudDataTransferConfig;

  /// The name of the destination.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The timeline of the expected `Destination` states or the current rest
  /// state. If a state change is expected, the value is `ADDING`,
  /// `DELETING` or `SUSPENDING`, depending on the action specified.
  /// Structure is documented below.
  late final pulumi.Output<List<DestinationStateTimeline>> stateTimelines;

  /// The Google-generated unique ID for the `Destination` resource.
  /// This value is unique across all `Destination` resources.
  /// If a resource is deleted and another with the same name is
  /// created, the new resource is assigned a different and unique ID.
  late final pulumi.Output<String> uid;

  /// Time when the `Destination` resource was updated.
  late final pulumi.Output<String> updateTime;

  Destination(
    String name, {
    DestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/destination:Destination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoints = registerOutput<List<DestinationEndpoint>>('endpoints');
    this.etag = registerOutput<String>('etag');
    this.ipPrefix = registerOutput<String>('ipPrefix');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicloudDataTransferConfig =
        registerOutput<String>('multicloudDataTransferConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.stateTimelines =
        registerOutput<List<DestinationStateTimeline>>('stateTimelines');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
