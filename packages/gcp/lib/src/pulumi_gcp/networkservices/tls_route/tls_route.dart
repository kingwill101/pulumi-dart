import 'package:pulumi/pulumi.dart' as pulumi;
import '../tls_route_rule/tls_route_rule.dart';
import 'tls_route_args.dart';

/// TlsRoute defines how traffic should be routed based on SNI and other matching L3 attributes.
///
///
/// To get more information about TlsRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.tlsRoutes)
///
/// ## Example Usage
///
/// ### Network Services Tls Route Basic
///
///
///
/// ### Network Services Tls Route Mesh Basic
///
///
///
/// ### Network Services Tls Route Gateway Basic
///
///
///
///
/// ## Import
///
/// TlsRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/tlsRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TlsRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default projects/{{project}}/locations/global/tlsRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{name}}
/// ```
class TlsRoute extends pulumi.CustomResource {
  /// Time the TlsRoute was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  late final pulumi.Output<List<String>?> gateways;

  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>
  /// The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>?> meshes;

  /// Name of the TlsRoute resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<TlsRouteRule>> rules;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// Time the TlsRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  TlsRoute(
    String name, {
    TlsRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tlsRoute:TlsRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<TlsRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
