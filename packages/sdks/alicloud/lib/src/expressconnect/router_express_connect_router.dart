import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_express_connect_router_args.dart';
import 'router_express_connect_router_state.dart';

/// ## Import
///
/// Express Connect Router Express Connect Router can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerExpressConnectRouter:RouterExpressConnectRouter example <id>
/// ```
class RouterExpressConnectRouter extends pulumi.CustomResource {
  /// ASN representing resources.
  late final pulumi.Output<int> alibabaSideAsn;

  /// Represents the creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Represents the description of the leased line gateway.
  late final pulumi.Output<String?> description;

  /// Name of the Gateway representing the leased line.
  late final pulumi.Output<String?> ecrName;

  /// List of regions representing leased line gateways. See `regions` below.
  late final pulumi.Output<List<Map<String, dynamic>>> regions;

  /// The ID of the resource group to which the ECR instance belongs.
  /// - A string consisting of letters, numbers, hyphens (-), and underscores (_), and the string length can be 0 to 64 characters.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RouterExpressConnectRouter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterExpressConnectRouter]. {@macro pulumi_expressconnect_router_express_connect_router_router_express_connect_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterExpressConnectRouter(
    String name, {
    RouterExpressConnectRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerExpressConnectRouter:RouterExpressConnectRouter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alibabaSideAsn = registerOutput<int>('alibabaSideAsn');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ecrName = registerOutput<String?>('ecrName');
    regions = registerOutput<List<Map<String, dynamic>>>('regions');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RouterExpressConnectRouter] resource's state with the given [name] and [id].
  static RouterExpressConnectRouter get(
    String name,
    pulumi.Input<String> id, {
    RouterExpressConnectRouterState? state,
  }) {
    return RouterExpressConnectRouter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterExpressConnectRouter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerExpressConnectRouter:RouterExpressConnectRouter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alibabaSideAsn = registerOutput<int>('alibabaSideAsn');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ecrName = registerOutput<String?>('ecrName');
    regions = registerOutput<List<Map<String, dynamic>>>('regions');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
