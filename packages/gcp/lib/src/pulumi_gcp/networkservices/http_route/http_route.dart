import 'package:pulumi/pulumi.dart' as pulumi;
import '../http_route_rule/http_route_rule.dart';
import 'http_route_args.dart';

/// HttpRoute is the resource defining how HTTP traffic should be routed by a Mesh or Gateway resource.
///
///
/// To get more information about HttpRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.httpRoutes)
/// * How-to Guides
/// * [Setup HTTP Services](https://cloud.google.com/traffic-director/docs/set-up-envoy-http-mesh)
///
/// ## Example Usage
///
/// ### Network Services Http Route Basic
///
///
///
/// ### Network Services Http Route Matches And Actions
///
///
///
/// ### Network Services Http Route Actions
///
///
///
/// ### Network Services Http Route Mesh Basic
///
///
///
///
/// ## Import
///
/// HttpRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/httpRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HttpRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default projects/{{project}}/locations/global/httpRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default {{name}}
/// ```
class HttpRoute extends pulumi.CustomResource {
  /// Time the HttpRoute was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  late final pulumi.Output<List<String>?> gateways;

  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  late final pulumi.Output<List<String>> hostnames;

  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>.
  /// The attached Mesh should be of a type SIDECAR.
  late final pulumi.Output<List<String>?> meshes;

  /// Name of the HttpRoute resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<HttpRouteRule>> rules;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// Time the HttpRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  HttpRoute(
    String name, {
    HttpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/httpRoute:HttpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.hostnames = registerOutput<List<String>>('hostnames');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<HttpRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
