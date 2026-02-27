import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_advertised_route_args.dart';

/// A gateway advertised route is a route that a gateway spoke advertises somewhere.
///
/// To get more information about GatewayAdvertisedRoute, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.spokes.gatewayAdvertisedRoutes)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/ncc-gateway-overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Gateway Advertised Route Basic
///
///
///
///
/// ## Import
///
/// GatewayAdvertisedRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spokes/{{spoke}}/gatewayAdvertisedRoutes/{{name}}`
///
/// * `{{project}}/{{location}}/{{spoke}}/{{name}}`
///
/// * `{{location}}/{{spoke}}/{{name}}`
///
/// When using the `pulumi import` command, GatewayAdvertisedRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default projects/{{project}}/locations/{{location}}/spokes/{{spoke}}/gatewayAdvertisedRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default {{project}}/{{location}}/{{spoke}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default {{location}}/{{spoke}}/{{name}}
/// ```
class GatewayAdvertisedRoute extends pulumi.CustomResource {
  /// The time the gateway advertised route was created.
  late final pulumi.Output<String> createTime;

  /// An optional description of the gateway advertised route.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a /32 singular IP address range, and, for IPv6, /128
  late final pulumi.Output<String?> ipRange;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// The name of the gateway advertised route. Route names must be unique.
  late final pulumi.Output<String> name;

  /// The priority of this advertised route. You can choose a value from 0 to 65335.
  /// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
  late final pulumi.Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// the recipient of this advertised route
  /// Possible values are: `RECIPIENT_UNSPECIFIED`, `ADVERTISE_TO_HUB`.
  late final pulumi.Output<String?> recipient;

  /// The name of the spoke
  late final pulumi.Output<String> spoke;

  /// The current lifecycle state of this gateway advertised route.
  late final pulumi.Output<String> state;

  /// The Google-generated UUID for the gateway advertised route.
  /// This value is unique across all gateway advertised route resources.
  /// If a gateway advertised route is deleted and another with the same name is created, the new route is assigned a different uniqueId.
  late final pulumi.Output<String> uniqueId;

  /// The time the gateway advertised route was last updated.
  late final pulumi.Output<String> updateTime;

  GatewayAdvertisedRoute(
    String name, {
    GatewayAdvertisedRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipRange = registerOutput<String?>('ipRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.recipient = registerOutput<String?>('recipient');
    this.spoke = registerOutput<String>('spoke');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
