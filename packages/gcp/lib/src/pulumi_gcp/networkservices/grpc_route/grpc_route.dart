import 'package:pulumi/pulumi.dart' as pulumi;
import '../grpc_route_rule/grpc_route_rule.dart';
import 'grpc_route_args.dart';

/// GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or Gateway resource is routed.
///
///
/// To get more information about GrpcRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.grpcRoutes)
///
/// ## Example Usage
///
/// ### Network Services Grpc Route Basic
///
///
///
/// ### Network Services Grpc Route Matches And Actions
///
///
///
/// ### Network Services Grpc Route Actions
///
///
///
/// ### Network Services Grpc Route Location
///
///
///
///
/// ## Import
///
/// GrpcRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/grpcRoutes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, GrpcRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default projects/{{project}}/locations/{{location}}/grpcRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/grpcRoute:GrpcRoute default {{location}}/{{name}}
/// ```
class GrpcRoute extends pulumi.CustomResource {
  /// Time the GrpcRoute was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  late final pulumi.Output<List<String>?> gateways;

  /// Required. Service hostnames with an optional port for which this route describes traffic.
  late final pulumi.Output<List<String>> hostnames;

  /// Set of label tags associated with the GrpcRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  late final pulumi.Output<String?> location;

  /// List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  late final pulumi.Output<List<String>?> meshes;

  /// Name of the GrpcRoute resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<GrpcRouteRule>> rules;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// Time the GrpcRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  GrpcRoute(
    String name, {
    GrpcRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/grpcRoute:GrpcRoute',
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
    this.location = registerOutput<String?>('location');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<GrpcRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
