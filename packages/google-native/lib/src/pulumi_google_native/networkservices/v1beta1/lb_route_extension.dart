import 'package:pulumi/pulumi.dart';
import 'extension_chain_response.dart';
import 'lb_route_extension_args.dart';

/// Creates a new `LbRouteExtension` resource in a given project and location.
class LbRouteExtension extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A human-readable description of the resource.
  late final Output<String> description;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  late final Output<List<ExtensionChainResponse>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LbRouteExtension` resource per forwarding rule.
  late final Output<List<String>> forwardingRules;

  /// Optional. Set of labels associated with the `LbRouteExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  late final Output<Map<String, String>> labels;

  /// Required. User-provided ID of the `LbRouteExtension` resource to be created.
  late final Output<String> lbRouteExtensionId;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  late final Output<String> loadBalancingScheme;
  late final Output<String> location;

  /// Name of the `LbRouteExtension` resource in the following format: `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, ignores the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  LbRouteExtension(
    String name, {
    LbRouteExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:LbRouteExtension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.extensionChains =
        registerOutput<List<ExtensionChainResponse>>('extensionChains');
    this.forwardingRules = registerOutput<List<String>>('forwardingRules');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lbRouteExtensionId = registerOutput<String>('lbRouteExtensionId');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
